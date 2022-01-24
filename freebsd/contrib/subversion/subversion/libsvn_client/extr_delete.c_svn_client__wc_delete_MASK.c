#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(const char *local_abspath,
                      svn_boolean_t force,
                      svn_boolean_t dry_run,
                      svn_boolean_t keep_local,
                      svn_wc_notify_func2_t notify_func,
                      void *notify_baton,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *pool)
{
  svn_boolean_t target_missing = FALSE;

  FUNC1(FUNC4(local_abspath));

  FUNC0(FUNC3(local_abspath, ctx, pool));

  if (!force && !keep_local)
    /* Verify that there are no "awkward" files */
    FUNC0(FUNC2(&target_missing, local_abspath, ctx, pool));

  if (!dry_run)
    /* Mark the entry for commit deletion and perform wc deletion */
    return FUNC5(FUNC6(ctx->wc_ctx, local_abspath,
                                          keep_local || target_missing
                                                            /*keep_local */,
                                          TRUE /* delete_unversioned */,
                                          ctx->cancel_func, ctx->cancel_baton,
                                          notify_func, notify_baton, pool));

  return SVN_NO_ERROR;
}