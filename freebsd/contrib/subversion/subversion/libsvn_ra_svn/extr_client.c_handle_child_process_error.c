
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int FALSE ;
 int SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ;
 int _ (char*) ;
 scalar_t__ apr_file_open_stdin (int **,int *) ;
 scalar_t__ apr_file_open_stdout (int **,int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_wrap_apr (int ,int ,char const*) ;
 int * svn_ra_svn__flush (int *,int *) ;
 int * svn_ra_svn__write_cmd_failure (int *,int *,int *) ;
 int * svn_ra_svn_create_conn5 (int *,int *,int *,int ,int ,int ,int ,int ,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

__attribute__((used)) static void handle_child_process_error(apr_pool_t *pool, apr_status_t status,
                                       const char *desc)
{
  svn_ra_svn_conn_t *conn;
  apr_file_t *in_file, *out_file;
  svn_stream_t *in_stream, *out_stream;
  svn_error_t *err;

  if (apr_file_open_stdin(&in_file, pool)
      || apr_file_open_stdout(&out_file, pool))
    return;

  in_stream = svn_stream_from_aprfile2(in_file, FALSE, pool);
  out_stream = svn_stream_from_aprfile2(out_file, FALSE, pool);

  conn = svn_ra_svn_create_conn5(((void*)0), in_stream, out_stream,
                                 SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, 0,
                                 0, 0, 0, pool);
  err = svn_error_wrap_apr(status, _("Error in child process: %s"), desc);
  svn_error_clear(svn_ra_svn__write_cmd_failure(conn, pool, err));
  svn_error_clear(err);
  svn_error_clear(svn_ra_svn__flush(conn, pool));
}
