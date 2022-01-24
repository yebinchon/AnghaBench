#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_conflict_choice_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  notify_func2; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_7__ {int /*<<< orphan*/  resolution_text; } ;
typedef  TYPE_2__ svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_id_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_client_conflict_option_t *option,
                      svn_client_conflict_t *conflict,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *scratch_pool)
{
  svn_client_conflict_option_id_t option_id;
  const char *local_abspath;
  const char *lock_abspath;
  svn_wc_conflict_choice_t conflict_choice;
  svn_error_t *err;

  option_id = FUNC3(option);
  conflict_choice = FUNC1(option_id);
  local_abspath = FUNC2(conflict);

  FUNC0(FUNC6(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));
  err = FUNC7(ctx->wc_ctx,
                                            local_abspath,
                                            conflict_choice,
                                            ctx->cancel_func,
                                            ctx->cancel_baton,
                                            ctx->notify_func2,
                                            ctx->notify_baton2,
                                            scratch_pool);
  err = FUNC4(err, FUNC8(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  FUNC5(local_abspath, scratch_pool);
  FUNC0(err);

  conflict->resolution_text = option_id;

  return SVN_NO_ERROR;
}