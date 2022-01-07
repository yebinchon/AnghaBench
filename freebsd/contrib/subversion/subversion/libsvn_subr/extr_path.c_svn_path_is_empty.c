
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SVN_PATH_IS_EMPTY (char const*) ;
 int assert (int ) ;
 int is_canonical (char const*,int ) ;
 int strlen (char const*) ;

int
svn_path_is_empty(const char *path)
{
  assert(is_canonical(path, strlen(path)));

  if (SVN_PATH_IS_EMPTY(path))
    return 1;

  return 0;
}
