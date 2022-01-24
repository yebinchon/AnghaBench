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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_depth_exclude ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_wc_adm_access_t *anchor,
                 const char *target,
                 svn_depth_t depth,
                 svn_wc_notify_func2_t notify_func,
                 void *notify_baton,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *db = FUNC4(anchor);
  const char *local_abspath;

  local_abspath = FUNC1(FUNC3(anchor),
                                  target, pool);

  FUNC0(FUNC5(&wc_ctx, NULL, db, pool));

  if (depth == svn_depth_exclude)
    {
      FUNC0(FUNC8(wc_ctx,
                             local_abspath,
                             cancel_func, cancel_baton,
                             notify_func, notify_baton,
                             pool));
    }
  else
    {
      FUNC0(FUNC7(wc_ctx,
                                local_abspath,
                                depth,
                                cancel_func, cancel_baton,
                                notify_func, notify_baton,
                                pool));
    }

  return FUNC2(FUNC6(wc_ctx));
}