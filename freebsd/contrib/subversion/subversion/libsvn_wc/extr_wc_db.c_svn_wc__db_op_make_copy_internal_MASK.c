#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sdb; int /*<<< orphan*/  wc_id; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INVALID_REPOS_ID ; 
 int /*<<< orphan*/  STMT_COPY_OP_DEPTH_RECURSIVE ; 
 int /*<<< orphan*/  STMT_INSERT_DELETE_FROM_NODE_RECURSIVE ; 
 int /*<<< orphan*/  STMT_SELECT_WORKING_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC18(svn_wc__db_wcroot_t *wcroot,
                                 const char *local_relpath,
                                 svn_boolean_t move_move_info,
                                 const svn_skel_t *conflicts,
                                 const svn_skel_t *work_items,
                                 apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int op_depth = -1;

  /* The update editor is supposed to call this function when there is
     no working node for LOCAL_ABSPATH. */
  FUNC0(FUNC12(&stmt, wcroot->sdb,
                                    STMT_SELECT_WORKING_NODE));
  FUNC0(FUNC10(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC14(&have_row, stmt));
  if (have_row)
    op_depth = FUNC11(stmt, 0);
  FUNC0(FUNC13(stmt));

  if (have_row)
    {
      if (op_depth == FUNC8(local_relpath))
        return FUNC9(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                             FUNC2("Modification of '%s' already exists"),
                             FUNC7(wcroot,
                                                    local_relpath,
                                                    scratch_pool));

      /* We have a working layer, but not one at the op-depth of local-relpath,
         so we can create a copy by just copying the lower layer */

      FUNC0(FUNC12(&stmt, wcroot->sdb,
                                        STMT_COPY_OP_DEPTH_RECURSIVE));
      FUNC0(FUNC10(stmt, "isdd", wcroot->wc_id, local_relpath,
                                op_depth, FUNC8(local_relpath)));
      FUNC0(FUNC15(stmt));
    }
  else
    {
      int affected_rows;

      op_depth = FUNC8(local_relpath);
      /* We don't allow copies to contain server-excluded nodes;
         the update editor is going to have to bail out. */
      FUNC0(FUNC4(wcroot, local_relpath,
                                            scratch_pool));

      /* Insert a shadowing layer */
      FUNC0(FUNC12(
                        &stmt, wcroot->sdb,
                        STMT_INSERT_DELETE_FROM_NODE_RECURSIVE));

      /* As we are keeping whatever is below, move the*/

      FUNC0(FUNC10(stmt, "isdd",
                                wcroot->wc_id, local_relpath,
                                0, op_depth));
      FUNC0(FUNC16(&affected_rows, stmt));
      FUNC1(affected_rows > 0);

      if (!move_move_info)
        FUNC0(FUNC5(wcroot, local_relpath,
                                                op_depth, scratch_pool));


      FUNC0(FUNC6(wcroot, local_relpath,
                            INVALID_REPOS_ID, NULL, SVN_INVALID_REVNUM,
                            op_depth, FALSE, op_depth,
                            scratch_pool));
    }

  if (conflicts)
    FUNC0(FUNC17(wcroot, local_relpath,
                                              conflicts, scratch_pool));

  FUNC0(FUNC3(wcroot->sdb, work_items, scratch_pool));

  return SVN_NO_ERROR;
}