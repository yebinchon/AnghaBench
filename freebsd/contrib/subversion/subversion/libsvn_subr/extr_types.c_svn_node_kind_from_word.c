
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_node_kind_t ;


 scalar_t__ strcmp (char const*,char*) ;
 int svn_node_dir ;
 int svn_node_file ;
 int svn_node_none ;
 int svn_node_symlink ;
 int svn_node_unknown ;

svn_node_kind_t
svn_node_kind_from_word(const char *word)
{
  if (word == ((void*)0))
    return svn_node_unknown;

  if (strcmp(word, "none") == 0)
    return svn_node_none;
  else if (strcmp(word, "file") == 0)
    return svn_node_file;
  else if (strcmp(word, "dir") == 0)
    return svn_node_dir;
  else if (strcmp(word, "symlink") == 0)
    return svn_node_symlink;
  else

    return svn_node_unknown;
}
