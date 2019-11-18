if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')

  " -------
  " 追加部分
  call dein#add('scrooloose/nerdtree')
  call dein#add('tell-k/vim-autopep8')
  call dein#add('scrooloose/syntastic')


  " -------

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif

" -------
" 設定

set number "行番号の表示
set title "タイトル表示

set expandtab "タブをスペースとして入力
set tabstop=4 "タブ入力の幅スペース4つ分
set shiftwidth=4 "タブ読み込みをスペース4つ文として変換
set smartindent "インデントを揃える

set mouse=a

" autopep8に関する設定
let g:autopep8_on_save = 1


let g:syntastic_python_checkers = ["flake8"]
