
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_size_t ;


 int SVN_PATH_IS_PLATFORM_EMPTY (char const*,int) ;
 int * strstr (char const*,char*) ;
 scalar_t__ svn_dirent_is_root (char const*,int) ;

__attribute__((used)) static svn_boolean_t
is_canonical(const char *path,
             apr_size_t len)
{
  return (! SVN_PATH_IS_PLATFORM_EMPTY(path, len)
          && strstr(path, "/./") == ((void*)0)
          && (len == 0
              || (len == 1 && path[0] == '/')
              || (path[len-1] != '/')



              ));
}
