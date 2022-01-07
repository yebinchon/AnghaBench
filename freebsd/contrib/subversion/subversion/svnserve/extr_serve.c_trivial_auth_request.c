
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int server_baton_t ;
typedef int apr_pool_t ;


 int * svn_ra_svn__write_cmd_response (int *,int *,char*,char*) ;

__attribute__((used)) static svn_error_t *trivial_auth_request(svn_ra_svn_conn_t *conn,
                                         apr_pool_t *pool, server_baton_t *b)
{
  return svn_ra_svn__write_cmd_response(conn, pool, "()c", "");
}
