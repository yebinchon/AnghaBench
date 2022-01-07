
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_ra_svn__write_number (int *,int *,int ) ;

svn_error_t *
svn_ra_svn_write_number(svn_ra_svn_conn_t *conn,
                        apr_pool_t *pool,
                        apr_uint64_t number)
{
  return svn_error_trace(svn_ra_svn__write_number(conn, pool, number));
}
