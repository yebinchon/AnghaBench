
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* svn_dirent_internal_style (char const*,int *) ;
 scalar_t__ svn_path_is_url (char const*) ;
 char const* svn_uri_canonicalize (char const*,int *) ;

const char *
svn_path_internal_style(const char *path, apr_pool_t *pool)
{
  if (svn_path_is_url(path))
    return svn_uri_canonicalize(path, pool);
  else
    return svn_dirent_internal_style(path, pool);
}
