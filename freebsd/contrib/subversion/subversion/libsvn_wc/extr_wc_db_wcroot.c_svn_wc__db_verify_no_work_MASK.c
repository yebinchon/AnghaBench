#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_LOOK_FOR_WORK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CLEANUP_REQUIRED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_sqlite__db_t *sdb)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  FUNC0(FUNC2(&stmt, sdb, STMT_LOOK_FOR_WORK));
  FUNC0(FUNC4(&have_row, stmt));
  FUNC0(FUNC3(stmt));

  if (have_row)
    return FUNC1(SVN_ERR_WC_CLEANUP_REQUIRED, NULL,
                            NULL /* nothing to add.  */);

  return SVN_NO_ERROR;
}