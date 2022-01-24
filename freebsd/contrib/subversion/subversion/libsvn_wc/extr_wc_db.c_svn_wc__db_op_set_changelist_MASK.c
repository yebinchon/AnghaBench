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
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
typedef  int /*<<< orphan*/  svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
struct set_changelist_baton_t {char const* new_changelist; int /*<<< orphan*/  depth; int /*<<< orphan*/  const* changelist_filter; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_FINALIZE_CHANGELIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  do_changelist_notify ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_changelist_txn ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct set_changelist_baton_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_wc__db_t *db,
                             const char *local_abspath,
                             const char *new_changelist,
                             const apr_array_header_t *changelist_filter,
                             svn_depth_t depth,
                             svn_wc_notify_func2_t notify_func,
                             void *notify_baton,
                             svn_cancel_func_t cancel_func,
                             void *cancel_baton,
                             apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  struct set_changelist_baton_t scb;

  scb.new_changelist = new_changelist;
  scb.changelist_filter = changelist_filter;
  scb.depth = depth;

  FUNC1(FUNC4(local_abspath));

  FUNC0(FUNC6(&wcroot, &local_relpath,
                                                db, local_abspath,
                                                scratch_pool, scratch_pool));
  FUNC2(wcroot);

  /* Flush the entries before we do the work. Even if no work is performed,
     the flush isn't a problem. */
  FUNC0(FUNC3(wcroot, local_abspath, depth, scratch_pool));

  /* Perform the set-changelist operation (transactionally), perform any
     notifications necessary, and then clean out our temporary tables.  */
  return FUNC5(FUNC7(wcroot, local_relpath,
                                           set_changelist_txn, &scb,
                                           do_changelist_notify, NULL,
                                           cancel_func, cancel_baton,
                                           notify_func, notify_baton,
                                           STMT_FINALIZE_CHANGELIST,
                                           scratch_pool));
}