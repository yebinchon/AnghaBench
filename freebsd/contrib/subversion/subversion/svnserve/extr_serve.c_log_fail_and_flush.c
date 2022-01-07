
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int server_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int *) ;
 int log_error (int *,int *) ;
 int svn_error_clear (int *) ;
 int * svn_ra_svn__flush (int *,int *) ;
 int * svn_ra_svn__write_cmd_failure (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
log_fail_and_flush(svn_error_t *err, server_baton_t *server,
                   svn_ra_svn_conn_t *conn, apr_pool_t *pool)
{
  svn_error_t *io_err;

  log_error(err, server);
  io_err = svn_ra_svn__write_cmd_failure(conn, pool, err);
  svn_error_clear(err);
  SVN_ERR(io_err);
  return svn_ra_svn__flush(conn, pool);
}
