
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_wc_operation_t ;
typedef int svn_wc_notify_func2_t ;
typedef scalar_t__ svn_wc_conflict_reason_t ;
typedef scalar_t__ svn_wc_conflict_choice_t ;
typedef scalar_t__ svn_wc_conflict_action_t ;
typedef int svn_wc__db_t ;
typedef int const svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int handle_tree_conflict_resolution_failure (char const*,int *,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_wc__conflict_read_info (scalar_t__*,int *,int *,int *,int*,int *,char const*,int const*,int *,int *) ;
 int svn_wc__conflict_read_tree_conflict (scalar_t__*,scalar_t__*,char const**,int *,char const*,int const*,int *,int *) ;
 int svn_wc__db_op_break_moved_away (int *,char const*,char const*,int,int ,void*,int *) ;
 int svn_wc__db_op_mark_resolved (int *,char const*,int,int,int,int *,int *) ;
 int * svn_wc__db_op_raise_moved_away (int *,char const*,int ,void*,int *) ;
 int svn_wc__db_read_conflict (int const**,int *,int *,int *,char const*,int *,int *) ;
 int * svn_wc__db_update_moved_away_conflict_victim (int *,char const*,char const*,scalar_t__,scalar_t__,scalar_t__,int ,void*,int ,void*,int *) ;
 int svn_wc__wq_run (int *,char const*,int ,void*,int *) ;
 scalar_t__ svn_wc_conflict_action_delete ;
 scalar_t__ svn_wc_conflict_action_edit ;
 scalar_t__ svn_wc_conflict_action_replace ;
 scalar_t__ svn_wc_conflict_choose_merged ;
 scalar_t__ svn_wc_conflict_choose_mine_conflict ;
 scalar_t__ svn_wc_conflict_reason_deleted ;
 scalar_t__ svn_wc_conflict_reason_moved_away ;
 scalar_t__ svn_wc_conflict_reason_replaced ;
 scalar_t__ svn_wc_operation_switch ;
 scalar_t__ svn_wc_operation_update ;

__attribute__((used)) static svn_error_t *
resolve_tree_conflict_on_node(svn_boolean_t *did_resolve,
                              svn_wc__db_t *db,
                              const char *local_abspath,
                              const svn_skel_t *conflicts,
                              svn_wc_conflict_choice_t conflict_choice,
                              apr_hash_t *resolve_later,
                              svn_wc_notify_func2_t notify_func,
                              void *notify_baton,
                              svn_cancel_func_t cancel_func,
                              void *cancel_baton,
                              apr_pool_t *scratch_pool)
{
  svn_wc_conflict_reason_t reason;
  svn_wc_conflict_action_t action;
  svn_wc_operation_t operation;
  svn_boolean_t tree_conflicted;
  const char *src_op_root_abspath;

  *did_resolve = FALSE;

  SVN_ERR(svn_wc__conflict_read_info(&operation, ((void*)0), ((void*)0), ((void*)0),
                                     &tree_conflicted, db, local_abspath,
                                     conflicts, scratch_pool, scratch_pool));
  if (!tree_conflicted)
    return SVN_NO_ERROR;

  SVN_ERR(svn_wc__conflict_read_tree_conflict(&reason, &action,
                                              &src_op_root_abspath,
                                              db, local_abspath,
                                              conflicts,
                                              scratch_pool, scratch_pool));

  if (operation == svn_wc_operation_update
      || operation == svn_wc_operation_switch)
    {
      svn_error_t *err;
      if (reason == svn_wc_conflict_reason_deleted ||
          reason == svn_wc_conflict_reason_replaced)
        {
          if (conflict_choice == svn_wc_conflict_choose_merged)
            {



              if (action != svn_wc_conflict_action_delete)
                {
                  SVN_ERR(svn_wc__db_op_break_moved_away(
                                  db, local_abspath, src_op_root_abspath, TRUE,
                                  notify_func, notify_baton,
                                  scratch_pool));
                  *did_resolve = TRUE;
                  return SVN_NO_ERROR;
                }



              *did_resolve = TRUE;
            }
          else if (conflict_choice == svn_wc_conflict_choose_mine_conflict)
            {
              svn_skel_t *new_conflicts;







              err = svn_wc__db_op_raise_moved_away(
                        db, local_abspath, notify_func, notify_baton,
                        scratch_pool);

              if (err)
                SVN_ERR(handle_tree_conflict_resolution_failure(
                          local_abspath, err, resolve_later));



              SVN_ERR(svn_wc__db_read_conflict(&new_conflicts, ((void*)0), ((void*)0),
                                               db, local_abspath,
                                               scratch_pool, scratch_pool));

              if (new_conflicts)
                SVN_ERR(svn_wc__conflict_read_info(((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                   &tree_conflicted,
                                                   db, local_abspath,
                                                   new_conflicts,
                                                   scratch_pool,
                                                   scratch_pool));

              if (!new_conflicts || !tree_conflicted)
                {


                  *did_resolve = TRUE;
                  return SVN_NO_ERROR;
                }

              SVN_ERR(svn_wc__conflict_read_tree_conflict(&reason, &action,
                                                          &src_op_root_abspath,
                                                          db, local_abspath,
                                                          new_conflicts,
                                                          scratch_pool,
                                                          scratch_pool));

              if (reason != svn_wc_conflict_reason_moved_away)
                {
                  *did_resolve = TRUE;
                  return SVN_NO_ERROR;
                }

              conflicts = new_conflicts;

            }
          else
            return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE,
                                     ((void*)0),
                                     _("Tree conflict can only be resolved to "
                                       "'working' or 'mine-conflict' state; "
                                       "'%s' not resolved"),
                                     svn_dirent_local_style(local_abspath,
                                                            scratch_pool));
        }

      if (reason == svn_wc_conflict_reason_moved_away
           && action == svn_wc_conflict_action_edit)
        {




          if (conflict_choice == svn_wc_conflict_choose_mine_conflict)
            {
              err = svn_wc__db_update_moved_away_conflict_victim(
                        db, local_abspath, src_op_root_abspath,
                        operation, action, reason,
                        cancel_func, cancel_baton,
                        notify_func, notify_baton,
                        scratch_pool);

              if (err)
                SVN_ERR(handle_tree_conflict_resolution_failure(
                          local_abspath, err, resolve_later));
              else
                *did_resolve = TRUE;
            }
          else if (conflict_choice == svn_wc_conflict_choose_merged)
            {




              SVN_ERR(svn_wc__db_op_break_moved_away(db, local_abspath,
                                                     src_op_root_abspath, TRUE,
                                                     notify_func, notify_baton,
                                                     scratch_pool));
              *did_resolve = TRUE;
              return SVN_NO_ERROR;
            }
          else
            return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE,
                                     ((void*)0),
                                     _("Tree conflict can only be resolved to "
                                       "'working' or 'mine-conflict' state; "
                                       "'%s' not resolved"),
                                     svn_dirent_local_style(local_abspath,
                                                            scratch_pool));
        }
      else if (reason == svn_wc_conflict_reason_moved_away
               && action != svn_wc_conflict_action_edit)
        {



          SVN_ERR_ASSERT(action == svn_wc_conflict_action_delete
                         || action == svn_wc_conflict_action_replace);

          if (conflict_choice == svn_wc_conflict_choose_merged)
            {




              *did_resolve = TRUE;
            }
          else if (conflict_choice == svn_wc_conflict_choose_mine_conflict)
            {
              return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE,
                                       ((void*)0),
                                       _("Tree conflict can only be "
                                         "resolved to 'working' state; "
                                         "'%s' is no longer moved"),
                                       svn_dirent_local_style(local_abspath,
                                                              scratch_pool));
            }
        }
    }

  if (! *did_resolve)
    {
      if (conflict_choice != svn_wc_conflict_choose_merged)
        {



          return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE,
                                   ((void*)0),
                                   _("Tree conflict can only be "
                                     "resolved to 'working' state; "
                                     "'%s' not resolved"),
                                   svn_dirent_local_style(local_abspath,
                                                          scratch_pool));
        }
      else
        *did_resolve = TRUE;
    }

  SVN_ERR_ASSERT(*did_resolve);

  SVN_ERR(svn_wc__db_op_mark_resolved(db, local_abspath, FALSE, FALSE, TRUE,
                                      ((void*)0), scratch_pool));
  SVN_ERR(svn_wc__wq_run(db, local_abspath, cancel_func, cancel_baton,
                         scratch_pool));
  return SVN_NO_ERROR;
}
