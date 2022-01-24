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
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_wc_context_t *wc_ctx,
                       const char *local_abspath,
                       const char *new_changelist,
                       svn_depth_t depth,
                       const apr_array_header_t *changelist_filter,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       svn_wc_notify_func2_t notify_func,
                       void *notify_baton,
                       apr_pool_t *scratch_pool)
{
  /* Assert that we aren't being asked to set an empty changelist. */
  FUNC1(! (new_changelist && new_changelist[0] == '\0'));

  FUNC1(FUNC2(local_abspath));

  FUNC0(FUNC3(wc_ctx->db, local_abspath,
                                       new_changelist, changelist_filter,
                                       depth, notify_func, notify_baton,
                                       cancel_func, cancel_baton,
                                       scratch_pool));

  return SVN_NO_ERROR;
}