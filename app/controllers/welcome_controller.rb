class KitesController < ApplicationController
  def index
    @kites = .all
    end
    def show
        @kite = Kite.find(params[:id])
    end
    def new
        @kite = Kite.new
    end
    def create
        @kite= Kite.new(kite_param)
        if @kite.save
            redirect_to kites_path
        else
            render "new"
        end
    end
    def edit
        @kite = Kite.find(params[:id])
    end
    def update
        @kite = Kite.find(params[:id])

        if @kite.update_attributes()
            redirect_to_kites_path
        else
            render "edit"
        end
end
def destroy
    @kite = Kite.find(param[:id])
    @bean.destroy
    redirect_to_kites_path
end
private

def kite_params
    params.require(:kite).permit(:name, :color, :origin, :quantity)
  end
end
