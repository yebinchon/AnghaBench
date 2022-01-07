
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int * svn_dirent_skip_ancestor (char const*,char const*) ;

svn_boolean_t
svn_dirent_is_ancestor(const char *parent_dirent, const char *child_dirent)
{
  return svn_dirent_skip_ancestor(parent_dirent, child_dirent) != ((void*)0);
}
