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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  notify_func2; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_client_conflict_option_t *option,
                                       svn_client_conflict_t *conflict,
                                       svn_client_ctx_t *ctx,
                                       apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  const char *lock_abspath;
  svn_error_t *err;

  local_abspath = FUNC1(conflict);

  FUNC0(FUNC3(
            &lock_abspath, ctx->wc_ctx, local_abspath,
            scratch_pool, scratch_pool));

  err = FUNC4(ctx->wc_ctx,
                                               local_abspath,
                                               ctx->cancel_func,
                                               ctx->cancel_baton,
                                               ctx->notify_func2,
                                               ctx->notify_baton2,
                                               scratch_pool);

  err = FUNC2(err, FUNC5(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  FUNC0(err);

  return SVN_NO_ERROR;
}