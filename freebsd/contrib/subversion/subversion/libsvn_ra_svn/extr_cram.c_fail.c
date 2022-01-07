
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * svn_error_trace (int ) ;
 int svn_ra_svn__flush (int *,int *) ;
 int svn_ra_svn__write_tuple (int *,int *,char*,char*,char const*) ;

__attribute__((used)) static svn_error_t *fail(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                         const char *msg)
{
  SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "w(c)", "failure", msg));
  return svn_error_trace(svn_ra_svn__flush(conn, pool));
}
