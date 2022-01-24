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
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(const char *path,
               svn_wc_adm_access_t *parent_access,
               svn_depth_t depth,
               svn_boolean_t use_commit_times,
               const apr_array_header_t *changelist_filter,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               svn_wc_notify_func2_t notify_func,
               void *notify_baton,
               apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *wc_db = FUNC3(parent_access);
  const char *local_abspath;

  FUNC0(FUNC4(&wc_ctx, NULL, wc_db, pool));
  FUNC0(FUNC1(&local_abspath, path, pool));

  FUNC0(FUNC6(wc_ctx,
                         local_abspath,
                         depth,
                         use_commit_times,
                         changelist_filter,
                         cancel_func, cancel_baton,
                         notify_func, notify_baton,
                         pool));

  return FUNC2(FUNC5(wc_ctx));
}