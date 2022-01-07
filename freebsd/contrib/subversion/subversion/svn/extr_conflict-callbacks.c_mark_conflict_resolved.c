
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_conflict_t ;
typedef int svn_client_conflict_option_id_t ;
typedef int svn_cl__conflict_stats_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_cl__conflict_stats_resolved (int *,char const*,int ) ;
 char* svn_cl__local_style_skip_ancestor (char const*,int ,int *) ;
 int svn_client_conflict_get_local_abspath (int *) ;
 int svn_client_conflict_prop_resolve_by_id (int *,char const*,int ,int *,int *) ;
 int svn_client_conflict_text_resolve_by_id (int *,int ,int *,int *) ;
 int svn_client_conflict_tree_resolve_by_id (int *,int ,int *,int *) ;
 int svn_wc_conflict_kind_property ;
 int svn_wc_conflict_kind_text ;
 int svn_wc_conflict_kind_tree ;

__attribute__((used)) static svn_error_t *
mark_conflict_resolved(svn_client_conflict_t *conflict,
                       svn_client_conflict_option_id_t option_id,
                       svn_boolean_t text_conflicted,
                       const char *propname,
                       svn_boolean_t tree_conflicted,
                       const char *path_prefix,
                       svn_cl__conflict_stats_t *conflict_stats,
                       svn_client_ctx_t *ctx,
                       apr_pool_t *scratch_pool)
{
  const char *local_relpath
    = svn_cl__local_style_skip_ancestor(
        path_prefix, svn_client_conflict_get_local_abspath(conflict),
        scratch_pool);

  if (text_conflicted)
    {
      SVN_ERR(svn_client_conflict_text_resolve_by_id(conflict, option_id,
                                                     ctx, scratch_pool));
      svn_cl__conflict_stats_resolved(conflict_stats, local_relpath,
                                      svn_wc_conflict_kind_text);
    }

  if (propname)
    {
      SVN_ERR(svn_client_conflict_prop_resolve_by_id(conflict, propname,
                                                     option_id, ctx,
                                                     scratch_pool));
      svn_cl__conflict_stats_resolved(conflict_stats, local_relpath,
                                      svn_wc_conflict_kind_property);
    }

  if (tree_conflicted)
    {
      SVN_ERR(svn_client_conflict_tree_resolve_by_id(conflict, option_id,
                                                     ctx, scratch_pool));
      svn_cl__conflict_stats_resolved(conflict_stats, local_relpath,
                                      svn_wc_conflict_kind_tree);
    }

  return SVN_NO_ERROR;
}
