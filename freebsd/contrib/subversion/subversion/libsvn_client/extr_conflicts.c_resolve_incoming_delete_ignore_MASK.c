#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_9__ {int /*<<< orphan*/  resolution_tree; } ;
typedef  TYPE_2__ svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_id_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_resolved_tree ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_client_conflict_option_t *option,
                               svn_client_conflict_t *conflict,
                               svn_client_ctx_t *ctx,
                               apr_pool_t *scratch_pool)
{
  svn_client_conflict_option_id_t option_id;
  const char *local_abspath;
  const char *lock_abspath;
  svn_error_t *err;

  option_id = FUNC3(option);
  local_abspath = FUNC2(conflict);

  FUNC0(FUNC5(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));

  err = FUNC9(conflict, option, ctx,
                                               scratch_pool);
  if (err)
    goto unlock_wc;

  /* Resolve to the current working copy state. */
  err = FUNC6(ctx->wc_ctx, local_abspath, scratch_pool);

  /* svn_wc__del_tree_conflict doesn't handle notification for us */
  if (ctx->notify_func2)
    ctx->notify_func2(ctx->notify_baton2,
                      FUNC8(local_abspath,
                                           svn_wc_notify_resolved_tree,
                                           scratch_pool),
                      scratch_pool);

unlock_wc:
  err = FUNC4(err, FUNC7(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  FUNC0(err);

  conflict->resolution_tree = option_id;

  return SVN_NO_ERROR;
}