class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  def index
    @books = Book.all
  end
  
  def set_book
    @book = Book.find(params[:id])
  end
  
  def show
   # @book = Book.find(params[:id])
  end
  
  def new
    @book = Book.new
  end
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end
  
  def edit
    #@book = Book.find(params[:id])
  end
  
  def update
    #@book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to books_path
  end
  
  def destroy
    #@book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
  
  ### ここからはprivate!!! ###
  private
  def book_params
    params.require(:book).permit(:name, :price, :publish, :publish_date)
  end
  
end
