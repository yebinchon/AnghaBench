
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_ra_svn__start_list (int *,int *) ;

svn_error_t *
svn_ra_svn_start_list(svn_ra_svn_conn_t *conn,
                      apr_pool_t *pool)
{
  return svn_error_trace(svn_ra_svn__start_list(conn, pool));
}
