
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_wc_conflict_reason_t ;
typedef scalar_t__ svn_wc_conflict_action_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_io_check_path (char const*,int *,int *) ;
 int svn_node_file ;
 int svn_wc__conflict_read_info (int *,int *,int*,int*,int*,int *,char const*,int *,int *,int *) ;
 int svn_wc__conflict_read_prop_conflict (char const**,int *,int *,int *,int *,int *,char const*,int *,int *,int *) ;
 int svn_wc__conflict_read_text_conflict (char const**,char const**,char const**,int *,char const*,int *,int *,int *) ;
 int svn_wc__conflict_read_tree_conflict (scalar_t__*,scalar_t__*,int *,int *,char const*,int *,int *,int *) ;
 int svn_wc__db_op_mark_resolved (int *,char const*,int,int,int,int *,int *) ;
 int svn_wc__db_read_conflict (int **,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_wclock_owns_lock (int*,int *,char const*,int,int *) ;
 scalar_t__ svn_wc_conflict_action_edit ;
 scalar_t__ svn_wc_conflict_reason_moved_away ;

__attribute__((used)) static svn_error_t *
internal_conflicted_p(svn_boolean_t *text_conflicted_p,
                      svn_boolean_t *prop_conflicted_p,
                      svn_boolean_t *tree_conflicted_p,
                      svn_boolean_t *ignore_move_edit_p,
                      svn_wc__db_t *db,
                      const char *local_abspath,
                      apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;
  svn_skel_t *conflicts;
  svn_boolean_t resolved_text = FALSE;
  svn_boolean_t resolved_props = FALSE;

  SVN_ERR(svn_wc__db_read_conflict(&conflicts, ((void*)0), ((void*)0),
                                   db, local_abspath,
                                   scratch_pool, scratch_pool));

  if (!conflicts)
    {
      if (text_conflicted_p)
        *text_conflicted_p = FALSE;
      if (prop_conflicted_p)
        *prop_conflicted_p = FALSE;
      if (tree_conflicted_p)
        *tree_conflicted_p = FALSE;
      if (ignore_move_edit_p)
        *ignore_move_edit_p = FALSE;

      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_wc__conflict_read_info(((void*)0), ((void*)0), text_conflicted_p,
                                     prop_conflicted_p, tree_conflicted_p,
                                     db, local_abspath, conflicts,
                                     scratch_pool, scratch_pool));

  if (text_conflicted_p && *text_conflicted_p)
    {
      const char *mine_abspath;
      const char *their_old_abspath;
      const char *their_abspath;
      svn_boolean_t done = FALSE;
      SVN_ERR(svn_wc__conflict_read_text_conflict(&mine_abspath,
                                                  &their_old_abspath,
                                                  &their_abspath,
                                                  db, local_abspath, conflicts,
                                                  scratch_pool, scratch_pool));

      if (mine_abspath)
        {
          SVN_ERR(svn_io_check_path(mine_abspath, &kind, scratch_pool));

          *text_conflicted_p = (kind == svn_node_file);

          if (*text_conflicted_p)
            done = TRUE;
        }

      if (!done && their_abspath)
        {
          SVN_ERR(svn_io_check_path(their_abspath, &kind, scratch_pool));

          *text_conflicted_p = (kind == svn_node_file);

          if (*text_conflicted_p)
            done = TRUE;
        }

        if (!done && their_old_abspath)
        {
          SVN_ERR(svn_io_check_path(their_old_abspath, &kind, scratch_pool));

          *text_conflicted_p = (kind == svn_node_file);

          if (*text_conflicted_p)
            done = TRUE;
        }

        if (!done && (mine_abspath || their_abspath || their_old_abspath))
          resolved_text = TRUE;
    }

  if (prop_conflicted_p && *prop_conflicted_p)
    {
      const char *prej_abspath;

      SVN_ERR(svn_wc__conflict_read_prop_conflict(&prej_abspath,
                                                  ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                  db, local_abspath, conflicts,
                                                  scratch_pool, scratch_pool));

      if (prej_abspath)
        {
          SVN_ERR(svn_io_check_path(prej_abspath, &kind, scratch_pool));

          *prop_conflicted_p = (kind == svn_node_file);

          if (! *prop_conflicted_p)
            resolved_props = TRUE;
        }
    }

  if (ignore_move_edit_p)
    {
      *ignore_move_edit_p = FALSE;
      if (tree_conflicted_p && *tree_conflicted_p)
        {
          svn_wc_conflict_reason_t reason;
          svn_wc_conflict_action_t action;

          SVN_ERR(svn_wc__conflict_read_tree_conflict(&reason, &action, ((void*)0),
                                                      db, local_abspath,
                                                      conflicts,
                                                      scratch_pool,
                                                      scratch_pool));

          if (reason == svn_wc_conflict_reason_moved_away
              && action == svn_wc_conflict_action_edit)
            {
              *tree_conflicted_p = FALSE;
              *ignore_move_edit_p = TRUE;
            }
        }
    }

  if (resolved_text || resolved_props)
    {
      svn_boolean_t own_lock;


      SVN_ERR(svn_wc__db_wclock_owns_lock(&own_lock, db, local_abspath, FALSE,
                                          scratch_pool));
      if (own_lock)
        SVN_ERR(svn_wc__db_op_mark_resolved(db, local_abspath,
                                            resolved_text,
                                            resolved_props,
                                            FALSE ,
                                            ((void*)0) ,
                                            scratch_pool));
    }

  return SVN_NO_ERROR;
}
