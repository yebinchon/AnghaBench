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
 int /*<<< orphan*/  STMT_UPDATE_MOVED_TO_RELPATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_wc__db_wcroot_t *wcroot,
                      const char *child_moved_from_relpath,
                      int op_depth,
                      const char *new_moved_to_relpath,
                      apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  int affected;

  FUNC0(FUNC3(&stmt, wcroot->sdb,
                                    STMT_UPDATE_MOVED_TO_RELPATH));

  FUNC0(FUNC2(stmt, "isds",
                            wcroot->wc_id,
                            child_moved_from_relpath,
                            op_depth,
                            new_moved_to_relpath));
  FUNC0(FUNC4(&affected, stmt));
#ifdef SVN_DEBUG
  /* Not fatal in release mode. The move recording is broken,
     but the rest of the working copy can handle this. */
  SVN_ERR_ASSERT(affected == 1);
#endif

  return SVN_NO_ERROR;
}