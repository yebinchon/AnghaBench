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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_HAVE_STAT1_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int SVN_WC__ENSURE_STAT1_TABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_sqlite__db_t *sdb,
                   int format,
                   apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  if (format != SVN_WC__ENSURE_STAT1_TABLE)
    return SVN_NO_ERROR;

  FUNC0(FUNC2(&stmt, sdb,
                                    STMT_HAVE_STAT1_TABLE));
  FUNC0(FUNC4(&have_row, stmt));
  FUNC0(FUNC3(stmt));

  if (!have_row)
    {
      FUNC1(
          FUNC5(sdb, scratch_pool));
    }

  return SVN_NO_ERROR;
}