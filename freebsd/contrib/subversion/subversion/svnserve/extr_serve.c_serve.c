
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int server_baton_t ;
typedef int serve_params_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int construct_server_baton (int **,int *,int *,int *) ;
 int main_commands ;
 int * svn_ra_svn__handle_commands2 (int *,int *,int ,int *,int ) ;

svn_error_t *serve(svn_ra_svn_conn_t *conn,
                   serve_params_t *params,
                   apr_pool_t *pool)
{
  server_baton_t *baton = ((void*)0);

  SVN_ERR(construct_server_baton(&baton, conn, params, pool));
  return svn_ra_svn__handle_commands2(conn, pool, main_commands, baton, FALSE);
}
