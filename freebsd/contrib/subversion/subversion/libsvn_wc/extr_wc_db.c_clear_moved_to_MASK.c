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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_CLEAR_MOVED_TO_RELPATH ; 
 int /*<<< orphan*/  STMT_SELECT_MOVED_FROM_RELPATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_wc__db_wcroot_t *wcroot,
               const char *moved_to_relpath,
               apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  const char *moved_from_relpath;
  int moved_from_op_depth;

  FUNC0(FUNC4(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_FROM_RELPATH));
  FUNC0(FUNC1(stmt, "is", wcroot->wc_id, moved_to_relpath));
  FUNC0(FUNC6(stmt));

  moved_from_relpath = FUNC3(stmt, 0, scratch_pool);
  moved_from_op_depth = FUNC2(stmt, 1);
  FUNC0(FUNC5(stmt));

  FUNC0(FUNC4(&stmt, wcroot->sdb,
                                    STMT_CLEAR_MOVED_TO_RELPATH));
  FUNC0(FUNC1(stmt, "isd", wcroot->wc_id,
                            moved_from_relpath, moved_from_op_depth));
  FUNC0(FUNC7(NULL, stmt));

  return SVN_NO_ERROR;
}