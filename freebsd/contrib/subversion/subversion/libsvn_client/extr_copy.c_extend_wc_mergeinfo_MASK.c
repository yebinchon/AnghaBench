#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char *target_abspath,
                    apr_hash_t *mergeinfo,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *pool)
{
  apr_hash_t *wc_mergeinfo;

  /* Get a fresh copy of the pre-existing state of the WC's mergeinfo
     updating it. */
  FUNC0(FUNC1(&wc_mergeinfo, ctx->wc_ctx,
                                      target_abspath, pool, pool));

  /* Combine the provided mergeinfo with any mergeinfo from the WC. */
  if (wc_mergeinfo && mergeinfo)
    FUNC0(FUNC4(wc_mergeinfo, mergeinfo, pool, pool));
  else if (! wc_mergeinfo)
    wc_mergeinfo = mergeinfo;

  return FUNC3(
    FUNC2(target_abspath, wc_mergeinfo,
                                    FALSE, ctx, pool));
}