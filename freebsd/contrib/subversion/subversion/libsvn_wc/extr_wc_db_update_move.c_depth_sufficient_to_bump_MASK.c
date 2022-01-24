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
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_depth_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_HAS_GRANDCHILDREN ; 
 int /*<<< orphan*/  STMT_SELECT_HAS_NON_FILE_CHILDREN ; 
 int /*<<< orphan*/  STMT_SELECT_OP_DEPTH_CHILDREN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
#define  svn_depth_empty 131 
#define  svn_depth_files 130 
#define  svn_depth_immediates 129 
#define  svn_depth_infinity 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_boolean_t *can_bump,
                         svn_wc__db_wcroot_t *wcroot,
                         const char *local_relpath,
                         int op_depth,
                         svn_depth_t depth,
                         apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  switch (depth)
    {
    case svn_depth_infinity:
      *can_bump = TRUE;
      return SVN_NO_ERROR;

    case svn_depth_empty:
      FUNC0(FUNC3(&stmt, wcroot->sdb,
                                        STMT_SELECT_OP_DEPTH_CHILDREN));
      FUNC0(FUNC2(stmt, "isd", wcroot->wc_id,
                                local_relpath, op_depth));
      break;

    case svn_depth_files:
      FUNC0(FUNC3(&stmt, wcroot->sdb,
                                        STMT_SELECT_HAS_NON_FILE_CHILDREN));
      FUNC0(FUNC2(stmt, "isd", wcroot->wc_id,
                                local_relpath, op_depth));
      break;

    case svn_depth_immediates:
      FUNC0(FUNC3(&stmt, wcroot->sdb,
                                        STMT_SELECT_HAS_GRANDCHILDREN));
      FUNC0(FUNC2(stmt, "isd", wcroot->wc_id,
                                local_relpath, op_depth));
      break;
    default:
      FUNC1();
    }
  FUNC0(FUNC5(&have_row, stmt));
  FUNC0(FUNC4(stmt));

  *can_bump = !have_row;
  return SVN_NO_ERROR;
}