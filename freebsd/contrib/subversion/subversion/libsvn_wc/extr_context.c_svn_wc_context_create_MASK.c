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
struct TYPE_5__ {int /*<<< orphan*/  close_db_on_destroy; int /*<<< orphan*/ * state_pool; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  close_ctx_apr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_wc_context_t **wc_ctx,
                      const svn_config_t *config,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_wc_context_t *ctx = FUNC1(result_pool, sizeof(*ctx));

  /* Create the state_pool, and open up a wc_db in it.
   * Since config contains a private mutable member but C doesn't support
   * we need to make it writable */
  ctx->state_pool = result_pool;
  FUNC0(FUNC3(&ctx->db, (svn_config_t *)config,
                          FALSE, TRUE, ctx->state_pool, scratch_pool));
  ctx->close_db_on_destroy = TRUE;

  FUNC2(result_pool, ctx, close_ctx_apr,
                            apr_pool_cleanup_null);

  *wc_ctx = ctx;

  return SVN_NO_ERROR;
}