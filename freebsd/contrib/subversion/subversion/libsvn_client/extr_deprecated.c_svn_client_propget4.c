
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int svn_client_propget5 (int **,int *,char const*,char const*,int const*,int const*,int *,int ,int const*,int *,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client_propget4(apr_hash_t **props,
                    const char *propname,
                    const char *target,
                    const svn_opt_revision_t *peg_revision,
                    const svn_opt_revision_t *revision,
                    svn_revnum_t *actual_revnum,
                    svn_depth_t depth,
                    const apr_array_header_t *changelists,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_client_propget5(props, ((void*)0), propname, target,
                                             peg_revision, revision,
                                             actual_revnum, depth,
                                             changelists, ctx,
                                             result_pool, scratch_pool));
}
