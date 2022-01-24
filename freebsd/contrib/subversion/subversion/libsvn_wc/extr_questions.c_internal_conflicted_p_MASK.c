#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ svn_wc_conflict_reason_t ;
typedef  scalar_t__ svn_wc_conflict_action_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_conflict_action_edit ; 
 scalar_t__ svn_wc_conflict_reason_moved_away ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_boolean_t *text_conflicted_p,
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

  FUNC0(FUNC7(&conflicts, NULL, NULL,
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

  FUNC0(FUNC2(NULL, NULL, text_conflicted_p,
                                     prop_conflicted_p, tree_conflicted_p,
                                     db, local_abspath, conflicts,
                                     scratch_pool, scratch_pool));

  if (text_conflicted_p && *text_conflicted_p)
    {
      const char *mine_abspath;
      const char *their_old_abspath;
      const char *their_abspath;
      svn_boolean_t done = FALSE;

      /* Look for any text conflict, exercising only as much effort as
         necessary to obtain a definitive answer.  This only applies to
         files, but we don't have to explicitly check that entry is a
         file, since these attributes would never be set on a directory
         anyway.  A conflict file entry notation only counts if the
         conflict file still exists on disk.  */

      FUNC0(FUNC4(&mine_abspath,
                                                  &their_old_abspath,
                                                  &their_abspath,
                                                  db, local_abspath, conflicts,
                                                  scratch_pool, scratch_pool));

      if (mine_abspath)
        {
          FUNC0(FUNC1(mine_abspath, &kind, scratch_pool));

          *text_conflicted_p = (kind == svn_node_file);

          if (*text_conflicted_p)
            done = TRUE;
        }

      if (!done && their_abspath)
        {
          FUNC0(FUNC1(their_abspath, &kind, scratch_pool));

          *text_conflicted_p = (kind == svn_node_file);

          if (*text_conflicted_p)
            done = TRUE;
        }

        if (!done && their_old_abspath)
        {
          FUNC0(FUNC1(their_old_abspath, &kind, scratch_pool));

          *text_conflicted_p = (kind == svn_node_file);

          if (*text_conflicted_p)
            done = TRUE;
        }

        if (!done && (mine_abspath || their_abspath || their_old_abspath))
          resolved_text = TRUE; /* Remove in-db conflict marker */
    }

  if (prop_conflicted_p && *prop_conflicted_p)
    {
      const char *prej_abspath;

      FUNC0(FUNC3(&prej_abspath,
                                                  NULL, NULL, NULL, NULL,
                                                  db, local_abspath, conflicts,
                                                  scratch_pool, scratch_pool));

      if (prej_abspath)
        {
          FUNC0(FUNC1(prej_abspath, &kind, scratch_pool));

          *prop_conflicted_p = (kind == svn_node_file);

          if (! *prop_conflicted_p)
            resolved_props = TRUE; /* Remove in-db conflict marker */
        }
    }

  if (ignore_move_edit_p)
    {
      *ignore_move_edit_p = FALSE;
      if (tree_conflicted_p && *tree_conflicted_p)
        {
          svn_wc_conflict_reason_t reason;
          svn_wc_conflict_action_t action;

          FUNC0(FUNC5(&reason, &action, NULL,
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

      /* The marker files are missing, so "repair" wc.db if we can */
      FUNC0(FUNC8(&own_lock, db, local_abspath, FALSE,
                                          scratch_pool));
      if (own_lock)
        FUNC0(FUNC6(db, local_abspath,
                                            resolved_text,
                                            resolved_props,
                                            FALSE /* resolved_tree */,
                                            NULL /* work_items */,
                                            scratch_pool));
    }

  return SVN_NO_ERROR;
}