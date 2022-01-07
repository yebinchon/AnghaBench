
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_CREATE ;
 int APR_EXCL ;
 int APR_OS_DEFAULT ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int * svn_io_file_write_full (int *,void const*,int ,int *,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;

svn_error_t *
svn_io_file_create_bytes(const char *file,
                         const void *contents,
                         apr_size_t length,
                         apr_pool_t *scratch_pool)
{
  apr_file_t *f;
  apr_size_t written;
  svn_error_t *err = SVN_NO_ERROR;

  SVN_ERR(svn_io_file_open(&f, file,
                           (APR_WRITE | APR_CREATE | APR_EXCL),
                           APR_OS_DEFAULT,
                           scratch_pool));
  if (length)
    err = svn_io_file_write_full(f, contents, length, &written,
                                 scratch_pool);

  err = svn_error_compose_create(
                    err,
                    svn_io_file_close(f, scratch_pool));

  if (err)
    {



      return svn_error_trace(
                svn_error_compose_create(
                    err,
                    svn_io_remove_file2(file, TRUE, scratch_pool)));
    }

  return SVN_NO_ERROR;
}
