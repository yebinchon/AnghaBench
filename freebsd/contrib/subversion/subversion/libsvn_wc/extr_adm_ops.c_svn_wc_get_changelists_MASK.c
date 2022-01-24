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
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_changelist_receiver_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
struct get_cl_fn_baton {int /*<<< orphan*/ * clhash; void* callback_baton; int /*<<< orphan*/  callback_func; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_node_changelist ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,struct get_cl_fn_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_wc_context_t *wc_ctx,
                       const char *local_abspath,
                       svn_depth_t depth,
                       const apr_array_header_t *changelist_filter,
                       svn_changelist_receiver_t callback_func,
                       void *callback_baton,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *scratch_pool)
{
  struct get_cl_fn_baton gnb;

  gnb.db = wc_ctx->db;
  gnb.clhash = NULL;
  gnb.callback_func = callback_func;
  gnb.callback_baton = callback_baton;

  if (changelist_filter)
    FUNC0(FUNC2(&gnb.clhash, changelist_filter,
                                       scratch_pool));

  return FUNC1(
    FUNC3(wc_ctx->db, local_abspath, FALSE,
                                   changelist_filter, get_node_changelist,
                                   &gnb, depth,
                                   cancel_func, cancel_baton,
                                   scratch_pool));

}