
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_client_merge5 (char const*,int const*,char const*,int const*,char const*,int ,int ,int ,int ,int ,int ,int ,int const*,int *,int *) ;

svn_error_t *
svn_client_merge4(const char *source1,
                  const svn_opt_revision_t *revision1,
                  const char *source2,
                  const svn_opt_revision_t *revision2,
                  const char *target_wcpath,
                  svn_depth_t depth,
                  svn_boolean_t ignore_ancestry,
                  svn_boolean_t force_delete,
                  svn_boolean_t record_only,
                  svn_boolean_t dry_run,
                  svn_boolean_t allow_mixed_rev,
                  const apr_array_header_t *merge_options,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *pool)
{
  SVN_ERR(svn_client_merge5(source1, revision1,
                            source2, revision2,
                            target_wcpath,
                            depth,
                            ignore_ancestry ,
                            ignore_ancestry ,
                            force_delete, record_only,
                            dry_run, allow_mixed_rev,
                            merge_options, ctx, pool));
  return SVN_NO_ERROR;
}
