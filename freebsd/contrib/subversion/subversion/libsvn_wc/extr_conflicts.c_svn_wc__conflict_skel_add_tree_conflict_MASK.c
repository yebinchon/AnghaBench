#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_wc_conflict_reason_t ;
typedef  scalar_t__ svn_wc_conflict_action_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_11__ {TYPE_1__* children; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char const* SVN_WC__CONFLICT_KIND_TREE ; 
 int /*<<< orphan*/  action_map ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  reason_map ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 char const* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_conflict_reason_moved_away ; 

svn_error_t *
FUNC8(svn_skel_t *conflict_skel,
                                        svn_wc__db_t *db,
                                        const char *wri_abspath,
                                        svn_wc_conflict_reason_t reason,
                                        svn_wc_conflict_action_t action,
                                        const char *move_src_op_root_abspath,
                                        apr_pool_t *result_pool,
                                        apr_pool_t *scratch_pool)
{
  svn_skel_t *tree_conflict;
  svn_skel_t *markers;

  FUNC0(FUNC2(&tree_conflict, conflict_skel,
                                 SVN_WC__CONFLICT_KIND_TREE));

  FUNC1(!tree_conflict); /* ### Use proper error? */

  FUNC1(reason == svn_wc_conflict_reason_moved_away
                 || !move_src_op_root_abspath); /* ### Use proper error? */

  tree_conflict = FUNC3(result_pool);

  if (reason == svn_wc_conflict_reason_moved_away
      && move_src_op_root_abspath)
    {
      const char *move_src_op_root_relpath;

      FUNC0(FUNC7(&move_src_op_root_relpath,
                                    db, wri_abspath,
                                    move_src_op_root_abspath,
                                    result_pool, scratch_pool));

      FUNC5(move_src_op_root_relpath, tree_conflict,
                            result_pool);
    }

  FUNC5(FUNC6(action_map, action),
                        tree_conflict, result_pool);

  FUNC5(FUNC6(reason_map, reason),
                        tree_conflict, result_pool);

  /* Tree conflicts have no marker files */
  markers = FUNC3(result_pool);
  FUNC4(markers, tree_conflict);

  FUNC5(SVN_WC__CONFLICT_KIND_TREE, tree_conflict,
                        result_pool);

  /* And add it to the conflict skel */
  FUNC4(tree_conflict, conflict_skel->children->next);

  return SVN_NO_ERROR;
}