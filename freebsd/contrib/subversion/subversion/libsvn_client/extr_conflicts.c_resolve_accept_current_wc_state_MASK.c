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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_7__ {scalar_t__ resolution_tree; } ;
typedef  TYPE_2__ svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_t ;
typedef  scalar_t__ svn_client_conflict_option_id_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (TYPE_2__*) ; 
 scalar_t__ svn_client_conflict_option_accept_current_wc_state ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_resolved_tree ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_client_conflict_option_t *option,
                                svn_client_conflict_t *conflict,
                                svn_client_ctx_t *ctx,
                                apr_pool_t *scratch_pool)
{
  svn_client_conflict_option_id_t option_id;
  const char *local_abspath;
  const char *lock_abspath;
  svn_error_t *err;

  option_id = FUNC4(option);
  local_abspath = FUNC3(conflict);

  if (option_id != svn_client_conflict_option_accept_current_wc_state)
    return FUNC7(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                             FUNC1("Tree conflict on '%s' can only be resolved "
                               "to the current working copy state"),
                             FUNC5(local_abspath,
                                                    scratch_pool));

  FUNC0(FUNC8(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));

  /* Resolve to current working copy state. */
  err = FUNC9(ctx->wc_ctx, local_abspath, scratch_pool);

  /* svn_wc__del_tree_conflict doesn't handle notification for us */
  if (ctx->notify_func2)
    ctx->notify_func2(ctx->notify_baton2,
                      FUNC11(local_abspath,
                                           svn_wc_notify_resolved_tree,
                                           scratch_pool),
                      scratch_pool);

  err = FUNC6(err, FUNC10(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  FUNC0(err);

  conflict->resolution_tree = option_id;

  return SVN_NO_ERROR;
}