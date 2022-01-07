
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_wc_operation_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,int ,int *) ;
struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef scalar_t__ svn_wc_conflict_reason_t ;
typedef scalar_t__ svn_wc_conflict_action_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int action_map ;
 int operation_map ;
 int reason_map ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int ) ;
 int svn_token__to_word (int ,scalar_t__) ;
 int svn_wc__conflict_read_info (scalar_t__*,int *,int *,int *,int *,int ,char const*,int *,int *,int *) ;
 int svn_wc__conflict_read_tree_conflict (scalar_t__*,scalar_t__*,int *,int ,char const*,int *,int *,int *) ;
 int svn_wc__db_op_raise_moved_away (int ,char const*,int (*) (void*,int ,int *),void*,int *) ;
 int svn_wc__read_conflicts (int const**,int **,int ,char const*,int ,int ,int *,int *) ;
 scalar_t__ svn_wc_conflict_action_edit ;
 scalar_t__ svn_wc_conflict_reason_deleted ;
 scalar_t__ svn_wc_conflict_reason_replaced ;
 int svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_resolved_tree ;
 scalar_t__ svn_wc_operation_switch ;
 scalar_t__ svn_wc_operation_update ;

svn_error_t *
svn_wc__conflict_tree_update_raise_moved_away(svn_wc_context_t *wc_ctx,
                                              const char *local_abspath,
                                              svn_cancel_func_t cancel_func,
                                              void *cancel_baton,
                                              svn_wc_notify_func2_t notify_func,
                                              void *notify_baton,
                                              apr_pool_t *scratch_pool)
{
  svn_wc_conflict_reason_t reason;
  svn_wc_conflict_action_t action;
  svn_wc_operation_t operation;
  svn_boolean_t tree_conflicted;
  const apr_array_header_t *conflicts;
  svn_skel_t *conflict_skel;

  SVN_ERR(svn_wc__read_conflicts(&conflicts, &conflict_skel,
                                 wc_ctx->db, local_abspath,
                                 FALSE,
                                 FALSE,
                                 scratch_pool, scratch_pool));

  SVN_ERR(svn_wc__conflict_read_info(&operation, ((void*)0), ((void*)0), ((void*)0),
                                     &tree_conflicted, wc_ctx->db,
                                     local_abspath, conflict_skel,
                                     scratch_pool, scratch_pool));
  if (!tree_conflicted)
    return SVN_NO_ERROR;

  SVN_ERR(svn_wc__conflict_read_tree_conflict(&reason, &action, ((void*)0),
                                              wc_ctx->db, local_abspath,
                                              conflict_skel,
                                              scratch_pool, scratch_pool));


  if (operation != svn_wc_operation_update &&
      operation != svn_wc_operation_switch)
    return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                             _("Unexpected conflict operation '%s' on '%s'"),
                             svn_token__to_word(operation_map, operation),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));
  if (reason != svn_wc_conflict_reason_deleted &&
      reason != svn_wc_conflict_reason_replaced)
    return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                             _("Unexpected conflict reason '%s' on '%s'"),
                             svn_token__to_word(reason_map, reason),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));
  if (action != svn_wc_conflict_action_edit)
    return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                             _("Unexpected conflict action '%s' on '%s'"),
                             svn_token__to_word(action_map, action),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));







  SVN_ERR(svn_wc__db_op_raise_moved_away(wc_ctx->db, local_abspath,
                                         notify_func, notify_baton,
                                         scratch_pool));


  if (notify_func)
    notify_func(notify_baton,
                svn_wc_create_notify(local_abspath,
                                     svn_wc_notify_resolved_tree,
                                     scratch_pool),
                scratch_pool);

  return SVN_NO_ERROR;
}
