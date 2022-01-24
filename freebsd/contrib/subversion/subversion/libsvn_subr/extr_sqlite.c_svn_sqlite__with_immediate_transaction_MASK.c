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
typedef  int /*<<< orphan*/  (* svn_sqlite__transaction_callback_t ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC1(
  svn_sqlite__db_t *db,
  svn_sqlite__transaction_callback_t cb_func,
  void *cb_baton,
  apr_pool_t *scratch_pool /* NULL allowed */)
{
  FUNC0(cb_func(cb_baton, db, scratch_pool), db);
  return SVN_NO_ERROR;
}