#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct revert_baton_t {scalar_t__ clear_changelists; int /*<<< orphan*/ * db; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_ACTUAL_HAS_CHILDREN ; 
 int /*<<< orphan*/  STMT_CLEAR_ACTUAL_NODE_LEAVING_CHANGELIST ; 
 int /*<<< orphan*/  STMT_DELETE_ACTUAL_NODE ; 
 int /*<<< orphan*/  STMT_DELETE_ACTUAL_NODE_LEAVING_CHANGELIST ; 
 int /*<<< orphan*/  STMT_DELETE_WC_LOCK_ORPHAN ; 
 int /*<<< orphan*/  STMT_DELETE_WORKING_NODE ; 
 int /*<<< orphan*/  STMT_SELECT_GE_OP_DEPTH_CHILDREN ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  STMT_UPDATE_OP_DEPTH_INCREASE_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_INVALID_OPERATION_DEPTH ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char const*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC17(void *baton,
              svn_wc__db_wcroot_t *wcroot,
              const char *local_relpath,
              apr_pool_t *scratch_pool)
{
  struct revert_baton_t *rvb = baton;
  svn_wc__db_t *db = rvb->db;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int op_depth;
  svn_boolean_t moved_here;
  int affected_rows;
  const char *moved_to;
  int op_depth_below;

  /* ### Similar structure to op_revert_recursive_txn, should they be
         combined? */

  FUNC0(FUNC11(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));
  FUNC0(FUNC7(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC13(&have_row, stmt));
  if (!have_row)
    {
      FUNC0(FUNC12(stmt));

      /* There was no NODE row, so attempt to delete an ACTUAL_NODE row.  */
      FUNC0(FUNC11(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_NODE));
      FUNC0(FUNC7(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC15(&affected_rows, stmt));
      if (affected_rows)
        {
          /* Can't do non-recursive actual-only revert if actual-only
             children exist. Raise an error to cancel the transaction.  */
          FUNC0(FUNC11(&stmt, wcroot->sdb,
                                            STMT_ACTUAL_HAS_CHILDREN));
          FUNC0(FUNC7(stmt, "is", wcroot->wc_id, local_relpath));
          FUNC0(FUNC13(&have_row, stmt));
          FUNC0(FUNC12(stmt));
          if (have_row)
            return FUNC6(SVN_ERR_WC_INVALID_OPERATION_DEPTH, NULL,
                                     FUNC1("Can't revert '%s' without"
                                       " reverting children"),
                                     FUNC3(wcroot,
                                                            local_relpath,
                                                            scratch_pool));
          return SVN_NO_ERROR;
        }

      return FUNC6(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                               FUNC1("The node '%s' was not found."),
                               FUNC3(wcroot,
                                                      local_relpath,
                                                      scratch_pool));
    }

  op_depth = FUNC9(stmt, 0);
  moved_here = FUNC8(stmt, 15);
  moved_to = FUNC10(stmt, 17, scratch_pool);

  FUNC0(FUNC13(&have_row, stmt));
  if (have_row)
    op_depth_below = FUNC9(stmt, 0);
  else
    op_depth_below = -1;

  FUNC0(FUNC12(stmt));

  if (moved_to)
    {
      FUNC0(FUNC16(wcroot,
                                                local_relpath, op_depth,
                                                moved_to, NULL, scratch_pool));
    }

  if (op_depth > 0 && op_depth == FUNC4(local_relpath))
    {
      int op_depth_increased;

      /* Can't do non-recursive revert if children exist */
      FUNC0(FUNC11(&stmt, wcroot->sdb,
                                        STMT_SELECT_GE_OP_DEPTH_CHILDREN));
      FUNC0(FUNC7(stmt, "isd", wcroot->wc_id,
                                local_relpath, op_depth));
      FUNC0(FUNC13(&have_row, stmt));
      FUNC0(FUNC12(stmt));
      if (have_row)
        return FUNC6(SVN_ERR_WC_INVALID_OPERATION_DEPTH, NULL,
                                 FUNC1("Can't revert '%s' without"
                                   " reverting children"),
                                 FUNC3(wcroot,
                                                        local_relpath,
                                                        scratch_pool));

      /* Rewrite the op-depth of all deleted children making the
         direct children into roots of deletes. */
      FUNC0(FUNC11(&stmt, wcroot->sdb,
                                     STMT_UPDATE_OP_DEPTH_INCREASE_RECURSIVE));
      FUNC0(FUNC7(stmt, "isd", wcroot->wc_id,
                                local_relpath,
                                op_depth));
      FUNC0(FUNC15(&op_depth_increased, stmt));

      FUNC0(FUNC11(&stmt, wcroot->sdb,
                                        STMT_DELETE_WORKING_NODE));
      FUNC0(FUNC7(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC14(stmt));

      /* ### This removes the lock, but what about the access baton? */
      FUNC0(FUNC11(&stmt, wcroot->sdb,
                                        STMT_DELETE_WC_LOCK_ORPHAN));
      FUNC0(FUNC7(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC14(stmt));

      /* If this node was moved-here, clear moved-to at the move source. */
      if (moved_here)
        FUNC0(FUNC2(wcroot, local_relpath, scratch_pool));

      /* If the node was moved itself, we don't have interesting moved
         children (and the move itself was already broken) */
      if (op_depth_increased && !moved_to)
        FUNC0(FUNC5(wcroot, db, local_relpath,
                                              op_depth_below, scratch_pool));
    }

  if (rvb->clear_changelists)
    {
      FUNC0(FUNC11(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_NODE));
      FUNC0(FUNC7(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC15(&affected_rows, stmt));
    }
  else
    {
      FUNC0(FUNC11(&stmt, wcroot->sdb,
                                  STMT_DELETE_ACTUAL_NODE_LEAVING_CHANGELIST));
      FUNC0(FUNC7(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC15(&affected_rows, stmt));
      if (!affected_rows)
        {
          FUNC0(FUNC11(&stmt, wcroot->sdb,
                                  STMT_CLEAR_ACTUAL_NODE_LEAVING_CHANGELIST));
          FUNC0(FUNC7(stmt, "is", wcroot->wc_id, local_relpath));
          FUNC0(FUNC15(&affected_rows, stmt));
        }
    }

  return SVN_NO_ERROR;
}