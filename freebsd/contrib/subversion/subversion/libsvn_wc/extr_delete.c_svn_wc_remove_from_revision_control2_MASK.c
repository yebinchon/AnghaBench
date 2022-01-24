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
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remove_from_revision_status_callback ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_wc_context_t *wc_ctx,
                                    const char *local_abspath,
                                    svn_boolean_t destroy_wf,
                                    svn_boolean_t instant_error,
                                    svn_cancel_func_t cancel_func,
                                    void *cancel_baton,
                                    apr_pool_t *scratch_pool)
{
  if (instant_error)
    {
      FUNC0(FUNC3(wc_ctx, local_abspath, svn_depth_infinity,
                                 FALSE, FALSE, FALSE, NULL,
                                 remove_from_revision_status_callback, NULL,
                                 cancel_func, cancel_baton,
                                 scratch_pool));
    }
  return FUNC1(
      FUNC2(wc_ctx->db,
                                                    local_abspath,
                                                    destroy_wf,
                                                    cancel_func,
                                                    cancel_baton,
                                                    scratch_pool));
}