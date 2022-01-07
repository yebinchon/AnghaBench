
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* apr_pstrdup (int *,char const*) ;
 char const* svn_dirent_local_style (char const*,int *) ;
 scalar_t__ svn_path_is_url (char const*) ;

const char *
svn_path_local_style(const char *path, apr_pool_t *pool)
{
  if (svn_path_is_url(path))
    return apr_pstrdup(pool, path);
  else
    return svn_dirent_local_style(path, pool);
}
