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
typedef  int /*<<< orphan*/  svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc__db_status_normal ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_boolean_t *have_base,
                   svn_boolean_t *have_work,
                   svn_wc__db_status_t *status,
                   svn_wc__db_wcroot_t *wcroot,
                   const char *local_relpath,
                   int below_op_depth,
                   apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  *have_base = *have_work =  FALSE;
  *status = svn_wc__db_status_normal;

  FUNC0(FUNC5(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));
  FUNC0(FUNC2(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC7(&have_row, stmt));

  if (below_op_depth >= 0)
    {
      while (have_row &&
             (FUNC3(stmt, 0) > below_op_depth))
        {
          FUNC0(FUNC7(&have_row, stmt));
        }
    }
  if (have_row)
    {
      FUNC0(FUNC7(&have_row, stmt));
      if (have_row)
        *status = FUNC4(stmt, 3, presence_map);

      while (have_row)
        {
          int op_depth = FUNC3(stmt, 0);

          if (op_depth > 0)
            *have_work = TRUE;
          else
            *have_base = TRUE;

          FUNC0(FUNC7(&have_row, stmt));
        }
    }
  FUNC0(FUNC6(stmt));

  if (*have_work)
    FUNC0(FUNC1(status, *status));

  return SVN_NO_ERROR;
}