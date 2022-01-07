
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * svn_client_cat3 (int *,int *,char const*,int const*,int const*,int ,int *,int *,int *) ;

svn_error_t *
svn_client_cat2(svn_stream_t *out,
                const char *path_or_url,
                const svn_opt_revision_t *peg_revision,
                const svn_opt_revision_t *revision,
                svn_client_ctx_t *ctx,
                apr_pool_t *pool)
{
  return svn_client_cat3(((void*)0) ,
                         out, path_or_url, peg_revision, revision,
                         TRUE ,
                         ctx, pool, pool);
}
