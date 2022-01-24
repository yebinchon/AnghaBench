#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_operation_t ;
struct TYPE_12__ {int /*<<< orphan*/  revision; void* prop_state; void* content_state; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_wc_conflict_reason_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_action_t ;
struct TYPE_13__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_3__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  svn_node_none ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (void*,TYPE_1__*,int /*<<< orphan*/ *),void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_update_completed ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_wc__db_t *db,
                                             const char *local_abspath,
                                             const char *delete_op_abspath,
                                             svn_wc_operation_t operation,
                                             svn_wc_conflict_action_t action,
                                             svn_wc_conflict_reason_t reason,
                                             svn_cancel_func_t cancel_func,
                                             void *cancel_baton,
                                             svn_wc_notify_func2_t notify_func,
                                             void *notify_baton,
                                             apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  svn_revnum_t old_rev, new_rev;
  const char *local_relpath;
  const char *delete_relpath;

  /* ### Check for mixed-rev src or dst? */

  FUNC0(FUNC6(&wcroot, &local_relpath,
                                                db, local_abspath,
                                                scratch_pool, scratch_pool));
  FUNC2(wcroot);

  delete_relpath
    = FUNC4(wcroot->abspath, delete_op_abspath);

  FUNC1(
    FUNC8(
      &old_rev, &new_rev,
      db, wcroot, local_relpath, delete_relpath,
      operation, action, reason,
      cancel_func, cancel_baton,
      scratch_pool),
    wcroot);

  /* Send all queued up notifications. */
  FUNC0(FUNC5(wcroot, old_rev, new_rev,
                                             notify_func, notify_baton,
                                             scratch_pool));
  if (notify_func)
    {
      svn_wc_notify_t *notify;

      notify = FUNC7(FUNC3(wcroot->abspath,
                                                    local_relpath,
                                                    scratch_pool),
                                    svn_wc_notify_update_completed,
                                    scratch_pool);
      notify->kind = svn_node_none;
      notify->content_state = svn_wc_notify_state_inapplicable;
      notify->prop_state = svn_wc_notify_state_inapplicable;
      notify->revision = new_rev;
      notify_func(notify_baton, notify, scratch_pool);
    }


  return SVN_NO_ERROR;
}