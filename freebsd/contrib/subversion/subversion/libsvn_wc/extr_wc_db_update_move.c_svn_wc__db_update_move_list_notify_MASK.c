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
struct TYPE_7__ {void* revision; void* old_revision; void* prop_state; void* content_state; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int /*<<< orphan*/ *) ;
typedef  void* svn_wc_notify_action_t ;
struct TYPE_8__ {int /*<<< orphan*/  sdb; int /*<<< orphan*/  abspath; } ;
typedef  TYPE_3__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  void* svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_FINALIZE_UPDATE_MOVE ; 
 int /*<<< orphan*/  STMT_SELECT_UPDATE_MOVE_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  kind_map_none ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(svn_wc__db_wcroot_t *wcroot,
                                   svn_revnum_t old_revision,
                                   svn_revnum_t new_revision,
                                   svn_wc_notify_func2_t notify_func,
                                   void *notify_baton,
                                   apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;

  if (notify_func)
    {
      apr_pool_t *iterpool;
      svn_boolean_t have_row;

      FUNC0(FUNC8(&stmt, wcroot->sdb,
                                        STMT_SELECT_UPDATE_MOVE_LIST));
      FUNC0(FUNC10(&have_row, stmt));

      iterpool = FUNC3(scratch_pool);
      while (have_row)
        {
          const char *local_relpath;
          svn_wc_notify_action_t action;
          svn_wc_notify_t *notify;

          FUNC2(iterpool);

          local_relpath = FUNC6(stmt, 0, NULL);
          action = FUNC5(stmt, 1);
          notify = FUNC12(FUNC1(wcroot->abspath,
                                                        local_relpath,
                                                        iterpool),
                                        action, iterpool);
          notify->kind = FUNC7(stmt, 2, kind_map_none);
          notify->content_state = FUNC5(stmt, 3);
          notify->prop_state = FUNC5(stmt, 4);
          notify->old_revision = old_revision;
          notify->revision = new_revision;
          notify_func(notify_baton, notify, scratch_pool);

          FUNC0(FUNC10(&have_row, stmt));
        }
      FUNC4(iterpool);
      FUNC0(FUNC9(stmt));
    }

  FUNC0(FUNC8(&stmt, wcroot->sdb,
                                    STMT_FINALIZE_UPDATE_MOVE));
  FUNC0(FUNC11(stmt));

  return SVN_NO_ERROR;
}