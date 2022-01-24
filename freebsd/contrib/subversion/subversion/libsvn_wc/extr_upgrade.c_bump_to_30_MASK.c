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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct bump_baton {int /*<<< orphan*/  wcroot_abspath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STMT_UPGRADE_30_SELECT_CONFLICT_SEPARATE ; 
 int /*<<< orphan*/  STMT_UPGRADE_TO_30 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(void *baton, svn_sqlite__db_t *sdb, apr_pool_t *scratch_pool)
{
  struct bump_baton *bb = baton;
  svn_boolean_t have_row;
  apr_pool_t *iterpool = FUNC5(scratch_pool);
  svn_sqlite__stmt_t *stmt;
  svn_wc__db_t *db; /* Read only temp db */

  FUNC0(FUNC11(&db, NULL, TRUE /* open_without_upgrade */, FALSE,
                          scratch_pool, scratch_pool));

  FUNC0(FUNC7(&stmt, sdb,
                                    STMT_UPGRADE_30_SELECT_CONFLICT_SEPARATE));
  FUNC0(FUNC9(&have_row, stmt));

  while (have_row)
    {
      svn_error_t *err;
      FUNC4(iterpool);

      err = FUNC1(db, bb->wcroot_abspath, stmt, sdb,
                                         iterpool);

      if (err)
        {
          return FUNC3(
                    FUNC2(
                            err,
                            FUNC8(stmt)));
        }

      FUNC0(FUNC9(&have_row, stmt));
    }
  FUNC0(FUNC8(stmt));

  FUNC0(FUNC6(sdb, STMT_UPGRADE_TO_30));
  FUNC0(FUNC10(db));
  return SVN_NO_ERROR;
}