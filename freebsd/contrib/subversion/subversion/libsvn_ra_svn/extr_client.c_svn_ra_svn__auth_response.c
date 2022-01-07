
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_ra_svn__write_tuple (int *,int *,char*,char const*,char const*) ;

svn_error_t *svn_ra_svn__auth_response(svn_ra_svn_conn_t *conn,
                                       apr_pool_t *pool,
                                       const char *mech, const char *mech_arg)
{
  return svn_error_trace(svn_ra_svn__write_tuple(conn, pool, "w(?c)", mech, mech_arg));
}
