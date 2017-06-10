class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new

  end

  def create
    # binding.pry
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end

end
