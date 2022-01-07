
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ apr_file_open_stderr (int **,int *) ;
 int * make_stream_from_apr_file (int *,int ,int ,int ,int *) ;
 int * svn_error_wrap_apr (scalar_t__,char*) ;

svn_error_t *
svn_stream_for_stderr(svn_stream_t **err, apr_pool_t *pool)
{
  apr_file_t *stderr_file;
  apr_status_t apr_err;

  apr_err = apr_file_open_stderr(&stderr_file, pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, "Can't open stderr");





  *err = make_stream_from_apr_file(stderr_file, TRUE, FALSE, FALSE, pool);

  return SVN_NO_ERROR;
}
