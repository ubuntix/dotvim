execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd vimenter * NERDTree
set nocp       
filetype plugin on
set number
	
set tags+=~/home/david/.vim/tags/sd1    
set tags+=~/home/david/.vim/tags/gl      
set tags+=~/home/david/.vim/tags/sdl      
set tags+=~/home/david/.vim/qt4      


noremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>      
inoremap <F12> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>      

let OmniCpp_NamespaceSearch = 1      
let OmniCpp_GlobalScopeSearch = 1      
let OmniCpp_ShowAccess = 1      
let OmniCpp_MayCompleteDot = 1      
let OmniCpp_MayCompleteArrow = 1      
let OmniCpp_MayCompleteScope = 1      
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]      

au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif      
set completeopt=menuone,menu,longest,preview

hi Pmenu        cterm=none ctermfg=White     ctermbg=Black
hi PmenuSel     cterm=none ctermfg=Black     ctermbg=DarkGreen
hi PmenuSbar    cterm=none ctermfg=none      ctermbg=Green
hi PmenuThumb   cterm=none ctermfg=DarkGreen ctermbg=DarkGreen

autocmd VimEnter * unmap! <Tab>
