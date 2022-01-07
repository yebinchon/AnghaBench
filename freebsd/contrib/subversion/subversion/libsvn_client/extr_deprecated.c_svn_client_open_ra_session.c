
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;


 int svn_client_open_ra_session2 (int **,char const*,int *,int *,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client_open_ra_session(svn_ra_session_t **session,
                           const char *url,
                           svn_client_ctx_t *ctx,
                           apr_pool_t *pool)
{
  return svn_error_trace(
             svn_client_open_ra_session2(session, url,
                                         ((void*)0), ctx,
                                         pool, pool));
}
