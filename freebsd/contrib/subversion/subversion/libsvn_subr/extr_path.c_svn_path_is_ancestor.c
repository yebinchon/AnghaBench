
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_size_t ;


 int FALSE ;
 scalar_t__ SVN_PATH_IS_EMPTY (char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

svn_boolean_t
svn_path_is_ancestor(const char *path1, const char *path2)
{
  apr_size_t path1_len = strlen(path1);


  if (SVN_PATH_IS_EMPTY(path1))
    return *path2 != '/';







  if (strncmp(path1, path2, path1_len) == 0)
    return path1[path1_len - 1] == '/'
      || (path2[path1_len] == '/' || path2[path1_len] == '\0');

  return FALSE;
}
