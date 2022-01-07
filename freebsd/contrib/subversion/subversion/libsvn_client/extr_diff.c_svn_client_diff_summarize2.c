
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_diff_tree_processor_t ;
typedef int svn_depth_t ;
typedef int svn_client_diff_summarize_func_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int do_diff (char const**,int *,int *,char const*,char const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,int ,int ,int ,int const*,int ,int const*,int *,int *,int *) ;
 int svn_client__get_diff_summarize_callbacks (int const**,char const***,int ,void*,char const*,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_opt_revision_unspecified ;

svn_error_t *
svn_client_diff_summarize2(const char *path_or_url1,
                           const svn_opt_revision_t *revision1,
                           const char *path_or_url2,
                           const svn_opt_revision_t *revision2,
                           svn_depth_t depth,
                           svn_boolean_t ignore_ancestry,
                           const apr_array_header_t *changelists,
                           svn_client_diff_summarize_func_t summarize_func,
                           void *summarize_baton,
                           svn_client_ctx_t *ctx,
                           apr_pool_t *pool)
{
  const svn_diff_tree_processor_t *diff_processor;
  svn_opt_revision_t peg_revision;
  const char **p_root_relpath;


  peg_revision.kind = svn_opt_revision_unspecified;

  SVN_ERR(svn_client__get_diff_summarize_callbacks(
                     &diff_processor, &p_root_relpath,
                     summarize_func, summarize_baton,
                     path_or_url1, pool, pool));

  return svn_error_trace(do_diff(p_root_relpath, ((void*)0), ((void*)0),
                                 path_or_url1, path_or_url2,
                                 revision1, revision2,
                                 &peg_revision, TRUE ,
                                 depth, ignore_ancestry, changelists,
                                 FALSE ,
                                 diff_processor, ctx, pool, pool));
}
