
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_ra_svn__write_word (int *,int *,char const*) ;

svn_error_t *
svn_ra_svn_write_word(svn_ra_svn_conn_t *conn,
                      apr_pool_t *pool,
                      const char *word)
{
  return svn_error_trace(svn_ra_svn__write_word(conn, pool, word));
}
