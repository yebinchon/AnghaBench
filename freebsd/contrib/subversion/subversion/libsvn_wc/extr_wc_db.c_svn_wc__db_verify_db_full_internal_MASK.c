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
struct TYPE_3__ {int /*<<< orphan*/  abspath; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/ * (* svn_wc__db_verify_cb_t ) (void*,int /*<<< orphan*/ ,char const*,int,int,char const*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_STATIC_VERIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_wc__db_wcroot_t *wcroot,
                                   svn_wc__db_verify_cb_t callback,
                                   void *baton,
                                   apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_error_t *err = NULL;
  apr_pool_t *iterpool = FUNC4(scratch_pool);

  FUNC0(FUNC8(&stmt, wcroot->sdb, STMT_STATIC_VERIFY));
  FUNC0(FUNC10(&have_row, stmt));

  while (have_row)
    {
      const char *local_relpath;
      int op_depth = FUNC6(stmt, 1);
      int id = FUNC6(stmt, 2);
      const char *msg;

      FUNC3(iterpool);

      local_relpath =  FUNC7(stmt, 0, iterpool);
      msg = FUNC7(stmt, 3, scratch_pool);

      err = callback(baton, wcroot->abspath, local_relpath, op_depth,
                     id, msg, iterpool);

      if (err)
        break;

      FUNC0(FUNC10(&have_row, stmt));
    }

  FUNC5(iterpool);

  return FUNC2(
            FUNC1(err, FUNC9(stmt)));
}