#
# To install it, follow this instruction:
# * create a "Vim" profile in Konsole (without tabbar, menu, ...)
# * add an alias in your ~/.bash_aliases
#   alias vim="~/.vim/vim.sh"
#
if [ -f "$1" ];
then
  working_file=$(cd $(dirname $1) && echo $PWD/$(basename $1))
  working_dir=$(cd $(dirname $working_file) && echo $PWD)
elif [ -d "$1" ];
then
  working_file=""
  working_dir=$(cd $1 && echo $PWD)
else
  working_file=""
  working_dir=""
fi
konsole --profile Vim -e vim -c "NERDTree $working_dir" $working_file >/dev/null 2>&1
