#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * (* work_callback_t ) (void*,TYPE_1__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/ * svn_wc_notify_func2_t ;
struct TYPE_7__ {int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/ * (* svn_wc__db_txn_callback_t ) (void*,TYPE_1__*,char const*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_wc__db_wcroot_t *wcroot,
                  const char *local_relpath,
                  svn_wc__db_txn_callback_t txn_cb,
                  void *txn_baton,
                  work_callback_t work_cb,
                  void *work_baton,
                  svn_cancel_func_t cancel_func,
                  void *cancel_baton,
                  svn_wc_notify_func2_t notify_func,
                  void *notify_baton,
                  int finalize_stmt_idx,
                  apr_pool_t *scratch_pool)
{
  svn_error_t *err1;
  svn_error_t *err2;

  err1 = FUNC2(wcroot->sdb);
  if (!err1)
    {
      err1 = txn_cb(txn_baton, wcroot, local_relpath, scratch_pool);

      err1 = FUNC4(wcroot->sdb, err1);
    }

  if (err1 == NULL && notify_func != NULL)
    {
      err2 = work_cb(work_baton, wcroot,
                     cancel_func, cancel_baton,
                     notify_func, notify_baton,
                     scratch_pool);
      err1 = FUNC0(err1, err2);
    }

  err2 = FUNC3(wcroot->sdb, finalize_stmt_idx);

  return FUNC1(FUNC0(err1, err2));
}