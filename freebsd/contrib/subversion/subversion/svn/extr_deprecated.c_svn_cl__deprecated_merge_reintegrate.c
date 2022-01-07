
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_client_merge_reintegrate (char const*,int const*,char const*,int ,int const*,int *,int *) ;

svn_error_t *
svn_cl__deprecated_merge_reintegrate(const char *source_path_or_url,
                                     const svn_opt_revision_t *src_peg_revision,
                                     const char *target_wcpath,
                                     svn_boolean_t dry_run,
                                     const apr_array_header_t *merge_options,
                                     svn_client_ctx_t *ctx,
                                     apr_pool_t *pool)
{
  SVN_ERR(svn_client_merge_reintegrate(source_path_or_url, src_peg_revision,
                                       target_wcpath, dry_run, merge_options,
                                       ctx, pool));
  return SVN_NO_ERROR;
}
