
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_FROM_OS_ERROR (int ) ;
 int APR_OS_DEFAULT ;
 int ERROR_SHARING_VIOLATION ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int WIN32_RETRY_LOOP (scalar_t__,scalar_t__) ;
 int _ (char*) ;
 scalar_t__ apr_dir_make_recursive (char const*,int ,int *) ;
 int cstring_from_utf8 (char const**,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ) ;
 scalar_t__ svn_path_is_empty (char const*) ;

svn_error_t *
svn_io_make_dir_recursively(const char *path, apr_pool_t *pool)
{
  const char *path_apr;
  apr_status_t apr_err;

  if (svn_path_is_empty(path))


    return SVN_NO_ERROR;

  SVN_ERR(cstring_from_utf8(&path_apr, path, pool));

  apr_err = apr_dir_make_recursive(path_apr, APR_OS_DEFAULT, pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, _("Can't make directory '%s'"),
                              svn_dirent_local_style(path, pool));

  return SVN_NO_ERROR;
}
