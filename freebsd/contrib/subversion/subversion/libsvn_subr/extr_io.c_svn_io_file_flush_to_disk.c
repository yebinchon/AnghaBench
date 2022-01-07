
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_os_file_t ;
typedef int apr_file_t ;


 scalar_t__ APR_STATUS_IS_EINTR (int ) ;
 scalar_t__ APR_STATUS_IS_EINVAL (int ) ;
 int F_FULLFSYNC ;
 int FlushFileBuffers (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_file_name_get (char const**,int *) ;
 int apr_get_os_error () ;
 int apr_os_file_get (int *,int *) ;
 int fcntl (int ,int ,int ) ;
 int fsync (int ) ;
 int * svn_error_wrap_apr (int ,int ,...) ;
 int svn_io_file_flush (int *,int *) ;
 int try_utf8_from_internal_style (char const*,int *) ;

svn_error_t *svn_io_file_flush_to_disk(apr_file_t *file,
                                       apr_pool_t *pool)
{
  apr_os_file_t filehand;
  const char *fname;
  apr_status_t apr_err;



  apr_err = apr_file_name_get(&fname, file);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, _("Can't get file name"));






  SVN_ERR(svn_io_file_flush(file, pool));

  apr_os_file_get(&filehand, file);



  {
      int rv;

      do {



        rv = fsync(filehand);

      } while (rv == -1 && APR_STATUS_IS_EINTR(apr_get_os_error()));




      if (rv == -1 && APR_STATUS_IS_EINVAL(apr_get_os_error()))
        return SVN_NO_ERROR;

      if (rv == -1)
        return svn_error_wrap_apr(apr_get_os_error(),
                                  _("Can't flush file '%s' to disk"),
                                  try_utf8_from_internal_style(fname, pool));


  }
  return SVN_NO_ERROR;
}
