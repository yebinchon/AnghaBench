#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_CLEAR_MOVED_HERE_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_wc__db_wcroot_t *wcroot,
                 const char *moved_to_relpath,
                 apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  int affected_rows;

  FUNC0(FUNC6(&stmt, wcroot->sdb,
                                    STMT_CLEAR_MOVED_HERE_RECURSIVE));
  FUNC0(FUNC5(stmt, "isd", wcroot->wc_id, moved_to_relpath,
                            FUNC3(moved_to_relpath)));

  FUNC0(FUNC7(&affected_rows, stmt));

  if (affected_rows == 0)
     return FUNC4(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                              FUNC1("The node '%s' was not found."),
                              FUNC2(wcroot, moved_to_relpath,
                                                     scratch_pool));

  return SVN_NO_ERROR;
}