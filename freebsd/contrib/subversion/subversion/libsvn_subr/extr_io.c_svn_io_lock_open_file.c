
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;



 int APR_FLOCK_NONBLOCK ;

 int APR_FLOCK_TYPEMASK ;
 int FILE_LOCK_RETRY_LOOP (scalar_t__,scalar_t__) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_file_lock (int *,int) ;
 scalar_t__ apr_file_name_get (char const**,int *) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,int *,int ,int ) ;
 int file_clear_locks ;
 int * svn_error_wrap_apr (scalar_t__,int ,...) ;
 int try_utf8_from_internal_style (char const*,int *) ;

svn_error_t *
svn_io_lock_open_file(apr_file_t *lockfile_handle,
                      svn_boolean_t exclusive,
                      svn_boolean_t nonblocking,
                      apr_pool_t *pool)
{
  int locktype = 128;
  apr_status_t apr_err;
  const char *fname;

  if (exclusive)
    locktype = 129;
  if (nonblocking)
    locktype |= APR_FLOCK_NONBLOCK;



  apr_err = apr_file_name_get(&fname, lockfile_handle);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, _("Can't get file name"));


  apr_err = apr_file_lock(lockfile_handle, locktype);
  FILE_LOCK_RETRY_LOOP(apr_err, apr_file_lock(lockfile_handle, locktype));

  if (apr_err)
    {
      switch (locktype & APR_FLOCK_TYPEMASK)
        {
        case 128:
          return svn_error_wrap_apr(apr_err,
                                    _("Can't get shared lock on file '%s'"),
                                    try_utf8_from_internal_style(fname, pool));
        case 129:
          return svn_error_wrap_apr(apr_err,
                                    _("Can't get exclusive lock on file '%s'"),
                                    try_utf8_from_internal_style(fname, pool));
        default:
          SVN_ERR_MALFUNCTION();
        }
    }






  apr_pool_cleanup_register(pool, lockfile_handle,
                            file_clear_locks,
                            apr_pool_cleanup_null);

  return SVN_NO_ERROR;
}
