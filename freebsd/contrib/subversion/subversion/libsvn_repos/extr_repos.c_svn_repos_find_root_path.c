
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 scalar_t__ check_repos_path (char const*,int *) ;
 int strlen (char const*) ;
 char* svn_dirent_dirname (char const*,int *) ;
 scalar_t__ svn_dirent_is_root (char const*,int ) ;
 int svn_error_clear (int *) ;
 int * svn_path_cstring_from_utf8 (char const**,char const*,int *) ;
 scalar_t__ svn_path_is_empty (char const*) ;

const char *
svn_repos_find_root_path(const char *path,
                         apr_pool_t *pool)
{
  const char *candidate = path;
  const char *decoded;
  svn_error_t *err;

  while (1)
    {



      err = svn_path_cstring_from_utf8(&decoded, candidate, pool);
      if (!err && check_repos_path(candidate, pool))
        break;
      svn_error_clear(err);

      if (svn_path_is_empty(candidate) ||
          svn_dirent_is_root(candidate, strlen(candidate)))
        return ((void*)0);

      candidate = svn_dirent_dirname(candidate, pool);
    }

  return candidate;
}
