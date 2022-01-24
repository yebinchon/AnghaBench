#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* changelist_name; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_wc_notify_action_t ;
struct TYPE_8__ {int /*<<< orphan*/  abspath; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_3__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/ * (* svn_cancel_func_t ) (void*) ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_CHANGELIST_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(void *baton,
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

  FUNC0(FUNC9(&stmt, wcroot->sdb,
                                    STMT_SELECT_CHANGELIST_LIST));
  FUNC0(FUNC11(&have_row, stmt));

  iterpool = FUNC5(scratch_pool);
  while (have_row)
    {
      /* ### wc_id is column 0. use it one day...  */
      const char *notify_relpath = FUNC8(stmt, 1, NULL);
      svn_wc_notify_action_t action = FUNC7(stmt, 2);
      svn_wc_notify_t *notify;
      const char *notify_abspath;

      FUNC4(iterpool);

      if (cancel_func)
        {
          svn_error_t *err = cancel_func(cancel_baton);

          if (err)
            return FUNC3(FUNC2(
                                                    err,
                                                    FUNC10(stmt)));
        }

      notify_abspath = FUNC1(wcroot->abspath, notify_relpath,
                                       iterpool);
      notify = FUNC12(notify_abspath, action, iterpool);
      notify->changelist_name = FUNC8(stmt, 3, NULL);
      notify_func(notify_baton, notify, iterpool);

      FUNC0(FUNC11(&have_row, stmt));
    }
  FUNC6(iterpool);

  return FUNC3(FUNC10(stmt));
}