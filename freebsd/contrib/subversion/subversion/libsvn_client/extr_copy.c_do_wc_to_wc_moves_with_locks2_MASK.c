#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  notify_func2; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_6__ {int /*<<< orphan*/  src_abspath_or_url; int /*<<< orphan*/  base_name; } ;
typedef  TYPE_2__ svn_client__copy_pair_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_client__copy_pair_t *pair,
                              const char *dst_parent_abspath,
                              svn_boolean_t lock_src,
                              svn_boolean_t lock_dst,
                              svn_boolean_t allow_mixed_revisions,
                              svn_boolean_t metadata_only,
                              svn_client_ctx_t *ctx,
                              apr_pool_t *scratch_pool)
{
  const char *dst_abspath;

  dst_abspath = FUNC1(dst_parent_abspath, pair->base_name,
                                scratch_pool);

  FUNC0(FUNC2(ctx->wc_ctx, pair->src_abspath_or_url,
                        dst_abspath, metadata_only,
                        allow_mixed_revisions,
                        ctx->cancel_func, ctx->cancel_baton,
                        ctx->notify_func2, ctx->notify_baton2,
                        scratch_pool));

  return SVN_NO_ERROR;
}