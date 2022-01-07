
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ svn_wc_operation_t ;
typedef scalar_t__ svn_wc_conflict_reason_t ;
typedef scalar_t__ svn_wc_conflict_action_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_11__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_12__ {int local_abspath; } ;
typedef TYPE_2__ svn_client_conflict_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int add_resolution_option (int *,TYPE_2__*,int ,int ,char const*,int ) ;
 char* apr_psprintf (int *,int ,int ,char const*,int ) ;
 int resolve_merge_incoming_added_dir_replace ;
 scalar_t__ svn_client_conflict_get_incoming_change (TYPE_2__*) ;
 int svn_client_conflict_get_incoming_new_repos_location (char const**,int *,scalar_t__*,TYPE_2__*,int *,int *) ;
 scalar_t__ svn_client_conflict_get_local_change (TYPE_2__*) ;
 scalar_t__ svn_client_conflict_get_operation (TYPE_2__*) ;
 int svn_client_conflict_option_incoming_added_dir_replace ;
 scalar_t__ svn_client_conflict_tree_get_victim_node_kind (TYPE_2__*) ;
 int svn_dirent_local_style (int ,int *) ;
 int svn_dirent_skip_ancestor (char const*,int ) ;
 scalar_t__ svn_node_dir ;
 int svn_wc__get_wcroot (char const**,int ,int ,int *,int *) ;
 scalar_t__ svn_wc_conflict_action_add ;
 scalar_t__ svn_wc_conflict_reason_obstructed ;
 scalar_t__ svn_wc_operation_merge ;

__attribute__((used)) static svn_error_t *
configure_option_incoming_added_dir_replace(svn_client_conflict_t *conflict,
                                            svn_client_ctx_t *ctx,
                                            apr_array_header_t *options,
                                            apr_pool_t *scratch_pool)
{
  svn_wc_operation_t operation;
  svn_wc_conflict_action_t incoming_change;
  svn_wc_conflict_reason_t local_change;
  svn_node_kind_t victim_node_kind;
  const char *incoming_new_repos_relpath;
  svn_revnum_t incoming_new_pegrev;
  svn_node_kind_t incoming_new_kind;

  operation = svn_client_conflict_get_operation(conflict);
  incoming_change = svn_client_conflict_get_incoming_change(conflict);
  local_change = svn_client_conflict_get_local_change(conflict);
  victim_node_kind = svn_client_conflict_tree_get_victim_node_kind(conflict);
  SVN_ERR(svn_client_conflict_get_incoming_new_repos_location(
            &incoming_new_repos_relpath, &incoming_new_pegrev,
            &incoming_new_kind, conflict, scratch_pool,
            scratch_pool));

  if (operation == svn_wc_operation_merge &&
      victim_node_kind == svn_node_dir &&
      incoming_new_kind == svn_node_dir &&
      incoming_change == svn_wc_conflict_action_add &&
      local_change == svn_wc_conflict_reason_obstructed)
    {
      const char *description;
      const char *wcroot_abspath;

      SVN_ERR(svn_wc__get_wcroot(&wcroot_abspath, ctx->wc_ctx,
                                 conflict->local_abspath, scratch_pool,
                                 scratch_pool));
      description =
        apr_psprintf(scratch_pool, _("delete '%s' and copy '^/%s@%ld' here"),
          svn_dirent_local_style(
            svn_dirent_skip_ancestor(wcroot_abspath,
                                     conflict->local_abspath),
            scratch_pool),
          incoming_new_repos_relpath, incoming_new_pegrev);
      add_resolution_option(
        options, conflict,
        svn_client_conflict_option_incoming_added_dir_replace,
        _("Delete my directory and replace it with incoming directory"),
        description, resolve_merge_incoming_added_dir_replace);
    }

  return SVN_NO_ERROR;
}
