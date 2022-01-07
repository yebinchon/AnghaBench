
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn_cmd_entry_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_error_trace (int ) ;
 int svn_ra_svn_handle_commands2 (int *,int *,int const*,void*,int ) ;

svn_error_t *
svn_ra_svn_handle_commands(svn_ra_svn_conn_t *conn,
                           apr_pool_t *pool,
                           const svn_ra_svn_cmd_entry_t *commands,
                           void *baton)
{
  return svn_error_trace(svn_ra_svn_handle_commands2(conn, pool,
                                                     commands, baton,
                                                     FALSE));
}
