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
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  STMT_CLEAR_ACTUAL_NODE_LEAVING_CONFLICT ; 
 int /*<<< orphan*/  STMT_DELETE_ACTUAL_EMPTY ; 
 int /*<<< orphan*/  STMT_DELETE_ACTUAL_NODE ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_base_deleted ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_wc__db_wcroot_t *wcroot,
                       const char *local_relpath,
                       int op_depth,
                       apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row, shadowed;
  svn_boolean_t keep_conflict = FALSE;

  FUNC0(FUNC4(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));

  FUNC0(FUNC1(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC6(&have_row, stmt));

  if (have_row)
    {
      svn_wc__db_status_t presence;

      shadowed = (FUNC2(stmt, 0) > op_depth);
      presence = FUNC3(stmt, 3, presence_map);

      if (shadowed && presence == svn_wc__db_status_base_deleted)
        {
          keep_conflict = TRUE;
          FUNC0(FUNC6(&have_row, stmt));

          if (have_row)
            shadowed = (FUNC2(stmt, 0) > op_depth);
          else
            shadowed = FALSE;
        }
    }
  else
    shadowed = FALSE;

  FUNC0(FUNC5(stmt));
  if (shadowed)
    return SVN_NO_ERROR;

  if (keep_conflict)
    {
      /* We don't want to accidentally remove delete-delete conflicts */
      FUNC0(FUNC4(
                          &stmt, wcroot->sdb,
                          STMT_CLEAR_ACTUAL_NODE_LEAVING_CONFLICT));
      FUNC0(FUNC1(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC7(stmt));
      FUNC0(FUNC4(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_EMPTY));
      FUNC0(FUNC1(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC7(stmt));
    }
  else
    {
      FUNC0(FUNC4(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_NODE));
      FUNC0(FUNC1(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC7(stmt));
    }

  return SVN_NO_ERROR;
}