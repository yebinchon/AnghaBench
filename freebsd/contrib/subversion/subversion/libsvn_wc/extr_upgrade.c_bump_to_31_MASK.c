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
typedef  int /*<<< orphan*/  svn_prop_inherited_item_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_UPDATE_IPROP ; 
 int /*<<< orphan*/  STMT_UPGRADE_31_SELECT_WCROOT_NODES ; 
 int /*<<< orphan*/  STMT_UPGRADE_TO_31 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(void *baton,
           svn_sqlite__db_t *sdb,
           apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt, *stmt_mark_switch_roots;
  svn_boolean_t have_row;
  apr_pool_t *iterpool = FUNC3(scratch_pool);
  apr_array_header_t *empty_iprops = FUNC1(
    scratch_pool, 0, sizeof(svn_prop_inherited_item_t *));
  svn_error_t *err;

  /* Run additional statements to finalize the upgrade to format 31. */
  FUNC0(FUNC9(sdb, STMT_UPGRADE_TO_31));

  /* Set inherited_props to an empty array for the roots of all
     switched subtrees in the WC.  This allows subsequent updates
     to recognize these roots as needing an iprops cache. */
  FUNC0(FUNC10(&stmt, sdb,
                                    STMT_UPGRADE_31_SELECT_WCROOT_NODES));
  FUNC0(FUNC12(&have_row, stmt));

  err = FUNC10(&stmt_mark_switch_roots, sdb,
                                  STMT_UPDATE_IPROP);
  if (err)
    return FUNC2(err, FUNC11(stmt));

  while (have_row)
    {
      const char *switched_relpath = FUNC8(stmt, 1, NULL);
      apr_int64_t wc_id = FUNC7(stmt, 0);

      err = FUNC6(stmt_mark_switch_roots, "is", wc_id,
                              switched_relpath);
      if (!err)
        err = FUNC5(stmt_mark_switch_roots, 3,
                                      empty_iprops, iterpool);
      if (!err)
        err = FUNC13(stmt_mark_switch_roots);
      if (!err)
        err = FUNC12(&have_row, stmt);

      if (err)
        return FUNC2(
                err,
                FUNC2(
                  /* Reset in either order is OK. */
                  FUNC11(stmt),
                  FUNC11(stmt_mark_switch_roots)));
    }

  err = FUNC11(stmt_mark_switch_roots);
  if (err)
    return FUNC2(err, FUNC11(stmt));
  FUNC0(FUNC11(stmt));

  FUNC4(iterpool);

  return SVN_NO_ERROR;
}