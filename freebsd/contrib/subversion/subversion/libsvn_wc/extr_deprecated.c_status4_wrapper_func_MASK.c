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
typedef  int /*<<< orphan*/  svn_wc_status3_t ;
typedef  int /*<<< orphan*/  svn_wc_status2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct status4_wrapper_baton {int /*<<< orphan*/  old_baton; int /*<<< orphan*/ * (* old_func ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * anchor_abspath; int /*<<< orphan*/  anchor_relpath; int /*<<< orphan*/  wc_ctx; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton,
                     const char *local_abspath,
                     const svn_wc_status3_t *status,
                     apr_pool_t *scratch_pool)
{
  struct status4_wrapper_baton *swb = baton;
  svn_wc_status2_t *dup;
  const char *path = local_abspath;

  FUNC0(FUNC4(&dup, status, swb->wc_ctx, local_abspath,
                                 scratch_pool, scratch_pool));

  if (swb->anchor_abspath != NULL)
    {
      path = FUNC2(
                swb->anchor_relpath,
                FUNC3(swb->anchor_abspath, local_abspath),
                scratch_pool);
    }

  return (*swb->old_func)(swb->old_baton, path, dup, scratch_pool);
}