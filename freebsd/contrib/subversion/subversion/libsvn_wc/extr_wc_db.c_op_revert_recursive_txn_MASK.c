#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct revert_baton_t {scalar_t__ clear_changelists; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_CLEAR_ACTUAL_NODE_LEAVING_CHANGELIST_RECURSIVE ; 
 int /*<<< orphan*/  STMT_DELETE_ACTUAL_NODE ; 
 int /*<<< orphan*/  STMT_DELETE_ACTUAL_NODE_LEAVING_CHANGELIST_RECURSIVE ; 
 int /*<<< orphan*/  STMT_DELETE_ACTUAL_NODE_RECURSIVE ; 
 int /*<<< orphan*/  STMT_DELETE_NODES_ABOVE_DEPTH_RECURSIVE ; 
 int /*<<< orphan*/  STMT_DELETE_WC_LOCK_ORPHAN_RECURSIVE ; 
 int /*<<< orphan*/  STMT_SELECT_MOVED_HERE_CHILDREN ; 
 int /*<<< orphan*/  STMT_SELECT_MOVED_OUTSIDE ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_WC_INVALID_OPERATION_DEPTH ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 char* FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (TYPE_1__*,char const*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC21(void *baton,
                        svn_wc__db_wcroot_t *wcroot,
                        const char *local_relpath,
                        apr_pool_t *scratch_pool)
{
  struct revert_baton_t *rvb = baton;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int op_depth;
  int select_op_depth;
  svn_boolean_t moved_here;
  int affected_rows;
  apr_pool_t *iterpool;

  /* ### Similar structure to op_revert_txn, should they be
         combined? */

  FUNC0(FUNC15(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));
  FUNC0(FUNC11(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC17(&have_row, stmt));
  if (!have_row)
    {
      FUNC0(FUNC16(stmt));

      FUNC0(FUNC15(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_NODE));
      FUNC0(FUNC11(stmt, "is", wcroot->wc_id,
                                local_relpath));
      FUNC0(FUNC19(&affected_rows, stmt));

      if (affected_rows)
        return SVN_NO_ERROR;  /* actual-only revert */

      return FUNC6(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                               FUNC1("The node '%s' was not found."),
                               FUNC3(wcroot,
                                                      local_relpath,
                                                      scratch_pool));
    }

  op_depth = FUNC13(stmt, 0);
  moved_here = FUNC12(stmt, 15);
  FUNC0(FUNC16(stmt));

  if (op_depth > 0 && op_depth != FUNC4(local_relpath))
    return FUNC6(SVN_ERR_WC_INVALID_OPERATION_DEPTH, NULL,
                             FUNC1("Can't revert '%s' without"
                               " reverting parent"),
                             FUNC3(wcroot,
                                                    local_relpath,
                                                    scratch_pool));

  /* Remove moved-here from move destinations outside the tree. */
  FUNC0(FUNC15(
                    &stmt, wcroot->sdb, STMT_SELECT_MOVED_OUTSIDE));
  FUNC0(FUNC11(stmt, "isd", wcroot->wc_id, local_relpath,
                            op_depth));
  FUNC0(FUNC17(&have_row, stmt));
  while (have_row)
    {
      const char *src_relpath = FUNC14(stmt, 0, NULL);
      const char *dst_relpath = FUNC14(stmt, 1, NULL);
      int move_op_depth = FUNC13(stmt, 2);
      svn_error_t *err;

      err = FUNC20(wcroot,
                                              src_relpath, move_op_depth,
                                              dst_relpath, NULL, scratch_pool);
      if (err)
        return FUNC5(err, FUNC16(stmt));

      FUNC0(FUNC17(&have_row, stmt));
    }
  FUNC0(FUNC16(stmt));

  /* Don't delete BASE nodes */
  select_op_depth = op_depth ? op_depth : 1;

  /* Reverting any non wc-root node */
  FUNC0(FUNC15(
                    &stmt, wcroot->sdb,
                    STMT_DELETE_NODES_ABOVE_DEPTH_RECURSIVE));
  FUNC0(FUNC11(stmt, "isd", wcroot->wc_id,
                            local_relpath, select_op_depth));
  FUNC0(FUNC18(stmt));

  if (rvb->clear_changelists)
    {
      FUNC0(FUNC15(
                        &stmt, wcroot->sdb,
                        STMT_DELETE_ACTUAL_NODE_RECURSIVE));
      FUNC0(FUNC11(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC18(stmt));
    }
  else
    {
      FUNC0(FUNC15(
                        &stmt, wcroot->sdb,
                        STMT_DELETE_ACTUAL_NODE_LEAVING_CHANGELIST_RECURSIVE));
      FUNC0(FUNC11(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC18(stmt));

      FUNC0(FUNC15(
                        &stmt, wcroot->sdb,
                        STMT_CLEAR_ACTUAL_NODE_LEAVING_CHANGELIST_RECURSIVE));
      FUNC0(FUNC11(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC18(stmt));
    }

  /* ### This removes the locks, but what about the access batons? */
  FUNC0(FUNC15(&stmt, wcroot->sdb,
                                    STMT_DELETE_WC_LOCK_ORPHAN_RECURSIVE));
  FUNC0(FUNC11(stmt, "is", wcroot->wc_id,
                            local_relpath));
  FUNC0(FUNC18(stmt));

  FUNC0(FUNC15(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_HERE_CHILDREN));
  FUNC0(FUNC11(stmt, "is", wcroot->wc_id, local_relpath));

  FUNC0(FUNC17(&have_row, stmt));

  iterpool = FUNC9(scratch_pool);
  while (have_row)
    {
      const char *moved_here_child_relpath;
      svn_error_t *err;

      FUNC8(iterpool);

      moved_here_child_relpath = FUNC14(stmt, 0, iterpool);
      err = FUNC2(wcroot, moved_here_child_relpath, iterpool);
      if (err)
        return FUNC7(FUNC5(
                                        err,
                                        FUNC16(stmt)));

      FUNC0(FUNC17(&have_row, stmt));
    }
  FUNC0(FUNC16(stmt));
  FUNC10(iterpool);

  /* Clear potential moved-to pointing at the target node itself. */
  if (op_depth > 0 && op_depth == FUNC4(local_relpath)
      && moved_here)
    FUNC0(FUNC2(wcroot, local_relpath, scratch_pool));

  return SVN_NO_ERROR;
}