
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_diff_summarize_func_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int * svn_client_diff_summarize2 (char const*,int const*,char const*,int const*,int ,int ,int *,int ,void*,int *,int *) ;

svn_error_t *
svn_client_diff_summarize(const char *path1,
                          const svn_opt_revision_t *revision1,
                          const char *path2,
                          const svn_opt_revision_t *revision2,
                          svn_boolean_t recurse,
                          svn_boolean_t ignore_ancestry,
                          svn_client_diff_summarize_func_t summarize_func,
                          void *summarize_baton,
                          svn_client_ctx_t *ctx,
                          apr_pool_t *pool)
{
  return svn_client_diff_summarize2(path1, revision1, path2,
                                    revision2,
                                    SVN_DEPTH_INFINITY_OR_FILES(recurse),
                                    ignore_ancestry, ((void*)0), summarize_func,
                                    summarize_baton, ctx, pool);
}
