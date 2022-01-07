
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_file_name_get (char const**,int *) ;
 scalar_t__ apr_file_unlock (int *) ;
 int apr_pool_cleanup_kill (int *,int *,int ) ;
 int file_clear_locks ;
 int * svn_error_wrap_apr (scalar_t__,int ,...) ;
 int try_utf8_from_internal_style (char const*,int *) ;

svn_error_t *
svn_io_unlock_open_file(apr_file_t *lockfile_handle,
                        apr_pool_t *pool)
{
  const char *fname;
  apr_status_t apr_err;



  apr_err = apr_file_name_get(&fname, lockfile_handle);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, _("Can't get file name"));


  apr_err = apr_file_unlock(lockfile_handle);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, _("Can't unlock file '%s'"),
                              try_utf8_from_internal_style(fname, pool));

  apr_pool_cleanup_kill(pool, lockfile_handle, file_clear_locks);

  return SVN_NO_ERROR;
}
