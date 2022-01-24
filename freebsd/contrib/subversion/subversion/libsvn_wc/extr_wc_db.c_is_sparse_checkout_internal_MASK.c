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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_HAS_SPARSE_NODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_boolean_t *is_sparse_checkout,
                            svn_wc__db_wcroot_t *wcroot,
                            const char *local_relpath,
                            apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  FUNC0(FUNC2(&stmt, wcroot->sdb,
                                    STMT_HAS_SPARSE_NODES));
  FUNC0(FUNC1(stmt, "is",
                            wcroot->wc_id,
                            local_relpath));
  /* If this query returns a row, the working copy is sparse. */
  FUNC0(FUNC4(&have_row, stmt));
  *is_sparse_checkout = have_row;
  FUNC0(FUNC3(stmt));

  return SVN_NO_ERROR;
}