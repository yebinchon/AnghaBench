
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int svn_client__open_ra_session_internal (int **,int *,char const*,char const*,int *,int ,int ,int *,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client_open_ra_session2(svn_ra_session_t **session,
                            const char *url,
                            const char *wri_abspath,
                            svn_client_ctx_t *ctx,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  return svn_error_trace(
             svn_client__open_ra_session_internal(session, ((void*)0), url,
                                                  wri_abspath, ((void*)0),
                                                  FALSE, FALSE,
                                                  ctx, result_pool,
                                                  scratch_pool));
}
