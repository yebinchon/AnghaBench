#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_CLEAR_MOVED_HERE_RECURSIVE ; 
 int /*<<< orphan*/  STMT_CLEAR_MOVED_TO_RELPATH ; 
 int /*<<< orphan*/  STMT_DELETE_NODE ; 
 int /*<<< orphan*/  STMT_SELECT_LOWEST_WORKING_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  presence_map ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_base_deleted ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_wc__db_wcroot_t *wcroot,
                         const char *local_relpath,
                         int op_depth,
                         apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int working_depth;
  svn_wc__db_status_t presence;
  const char *moved_to;

  FUNC0(FUNC7(&stmt, wcroot->sdb,
                                    STMT_SELECT_LOWEST_WORKING_NODE));
  FUNC0(FUNC3(stmt, "isd", wcroot->wc_id, local_relpath,
                            op_depth));
  FUNC0(FUNC9(&have_row, stmt));

  if (!have_row)
    return FUNC2(FUNC8(stmt));

  working_depth = FUNC4(stmt, 0);
  presence = FUNC6(stmt, 1, presence_map);
  moved_to = FUNC5(stmt, 3, scratch_pool);

  FUNC0(FUNC8(stmt));

  if (moved_to)
    {
      /* Turn the move into a copy to keep the NODES table valid */
      FUNC0(FUNC7(&stmt, wcroot->sdb,
                                        STMT_CLEAR_MOVED_HERE_RECURSIVE));
      FUNC0(FUNC3(stmt, "isd", wcroot->wc_id,
                                moved_to, FUNC1(moved_to)));
      FUNC0(FUNC10(stmt));

      /* This leaves just the moved_to information on the origin,
         which we will remove in the next step */
    }

  if (presence == svn_wc__db_status_base_deleted)
    {
      /* Nothing left to shadow; remove the base-deleted node */
      FUNC0(FUNC7(&stmt, wcroot->sdb, STMT_DELETE_NODE));
    }
  else if (moved_to)
    {
      /* Clear moved to information, as this node is no longer base-deleted */
      FUNC0(FUNC7(&stmt, wcroot->sdb,
                                        STMT_CLEAR_MOVED_TO_RELPATH));
      }
  else
    {
      /* Nothing to update */
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC3(stmt, "isd", wcroot->wc_id, local_relpath,
                            working_depth));

  return FUNC2(FUNC11(NULL, stmt));
}