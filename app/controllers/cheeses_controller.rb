class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    c = Cheese.find_by!(id: params[:id])
    render json: c
  end

end
