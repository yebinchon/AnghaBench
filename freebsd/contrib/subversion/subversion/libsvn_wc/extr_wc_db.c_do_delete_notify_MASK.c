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
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;
struct TYPE_3__ {int /*<<< orphan*/  abspath; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  (* svn_cancel_func_t ) (void*) ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_DELETE_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_delete ; 

__attribute__((used)) static svn_error_t *
FUNC10(void *baton,
                 svn_wc__db_wcroot_t *wcroot,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 svn_wc_notify_func2_t notify_func,
                 void *notify_baton,
                 apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_pool_t *iterpool;

  FUNC0(FUNC6(&stmt, wcroot->sdb,
                                    STMT_SELECT_DELETE_LIST));
  FUNC0(FUNC8(&have_row, stmt));

  iterpool = FUNC3(scratch_pool);
  while (have_row)
    {
      const char *notify_relpath;
      const char *notify_abspath;

      FUNC2(iterpool);

      notify_relpath = FUNC5(stmt, 0, NULL);
      notify_abspath = FUNC1(wcroot->abspath,
                                       notify_relpath,
                                       iterpool);

      notify_func(notify_baton,
                  FUNC9(notify_abspath,
                                       svn_wc_notify_delete,
                                       iterpool),
                  iterpool);

      FUNC0(FUNC8(&have_row, stmt));
    }
  FUNC4(iterpool);

  FUNC0(FUNC7(stmt));

  /* We only allow cancellation after notification for all deleted nodes
   * has happened. The nodes are already deleted so we should notify for
   * all of them. */
  if (cancel_func)
    FUNC0(cancel_func(cancel_baton));

  return SVN_NO_ERROR;
}