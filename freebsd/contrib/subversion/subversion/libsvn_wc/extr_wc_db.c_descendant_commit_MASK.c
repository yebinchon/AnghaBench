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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_COMMIT_DESCENDANTS_TO_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_wc__db_wcroot_t *wcroot,
                  const char *local_relpath,
                  int op_depth,
                  apr_int64_t repos_id,
                  const char *repos_relpath,
                  svn_revnum_t revision,
                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;

  FUNC1(*local_relpath != '\0'
                 && *repos_relpath != '\0');

  FUNC0(FUNC3(&stmt, wcroot->sdb,
                                    STMT_COMMIT_DESCENDANTS_TO_BASE));

  FUNC0(FUNC2(stmt, "isdisr", wcroot->wc_id,
                                            local_relpath,
                                            op_depth,
                                            repos_id,
                                            repos_relpath,
                                            revision));

  FUNC0(FUNC4(NULL, stmt));

  return SVN_NO_ERROR;
}