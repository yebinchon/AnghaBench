
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_time_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_file_mtime_set (char const*,int ,int *) ;
 int cstring_from_utf8 (char const**,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ) ;

svn_error_t *
svn_io_set_file_affected_time(apr_time_t apr_time,
                              const char *path,
                              apr_pool_t *pool)
{
  apr_status_t status;
  const char *native_path;

  SVN_ERR(cstring_from_utf8(&native_path, path, pool));
  status = apr_file_mtime_set(native_path, apr_time, pool);

  if (status)
    return svn_error_wrap_apr(status, _("Can't set access time of '%s'"),
                              svn_dirent_local_style(path, pool));

  return SVN_NO_ERROR;
}
