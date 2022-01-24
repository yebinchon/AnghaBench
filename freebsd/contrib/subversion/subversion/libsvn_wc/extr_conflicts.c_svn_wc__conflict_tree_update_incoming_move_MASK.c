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
typedef  scalar_t__ svn_wc_operation_t ;
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  scalar_t__ svn_wc_conflict_reason_t ;
typedef  scalar_t__ svn_wc_conflict_action_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  action_map ; 
 int /*<<< orphan*/  operation_map ; 
 int /*<<< orphan*/  reason_map ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,char const*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const**,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_conflict_action_delete ; 
 scalar_t__ svn_wc_conflict_reason_edited ; 
 scalar_t__ svn_wc_operation_merge ; 
 scalar_t__ svn_wc_operation_switch ; 
 scalar_t__ svn_wc_operation_update ; 

svn_error_t *
FUNC10(svn_wc_context_t *wc_ctx,
                                           const char *local_abspath,
                                           const char *dest_abspath,
                                           svn_cancel_func_t cancel_func,
                                           void *cancel_baton,
                                           svn_wc_notify_func2_t notify_func,
                                           void *notify_baton,
                                           apr_pool_t *scratch_pool)
{
  svn_wc_conflict_reason_t local_change;
  svn_wc_conflict_action_t incoming_change;
  svn_wc_operation_t operation;
  svn_boolean_t tree_conflicted;
  const apr_array_header_t *conflicts;
  svn_skel_t *conflict_skel;

  FUNC0(FUNC8(&conflicts, &conflict_skel,
                                 wc_ctx->db, local_abspath,
                                 FALSE, /* no tempfiles */
                                 FALSE, /* only tree conflicts */
                                 scratch_pool, scratch_pool));

  FUNC0(FUNC5(&operation, NULL, NULL, NULL,
                                     &tree_conflicted, wc_ctx->db,
                                     local_abspath, conflict_skel,
                                     scratch_pool, scratch_pool));
  if (!tree_conflicted)
    return SVN_NO_ERROR;

  FUNC0(FUNC6(&local_change, &incoming_change,
                                              NULL, wc_ctx->db, local_abspath,
                                              conflict_skel,
                                              scratch_pool, scratch_pool));

  /* Make sure the expected conflict is recorded. */
  if (operation != svn_wc_operation_update &&
      operation != svn_wc_operation_switch &&
      operation != svn_wc_operation_merge)
    return FUNC3(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                             FUNC1("Unexpected conflict operation '%s' on '%s'"),
                             FUNC4(operation_map, operation),
                             FUNC2(local_abspath,
                                                    scratch_pool));
  if (local_change != svn_wc_conflict_reason_edited)
    return FUNC3(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                             FUNC1("Unexpected conflict reason '%s' on '%s'"),
                             FUNC4(reason_map, local_change),
                             FUNC2(local_abspath,
                                                    scratch_pool));
  if (incoming_change != svn_wc_conflict_action_delete)
    return FUNC3(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                             FUNC1("Unexpected conflict action '%s' on '%s'"),
                             FUNC4(action_map, incoming_change),
                             FUNC2(local_abspath,
                                                    scratch_pool));

  FUNC0(FUNC7(wc_ctx->db, local_abspath,
                                          dest_abspath, operation,
                                          incoming_change, local_change,
                                          cancel_func, cancel_baton,
                                          notify_func, notify_baton,
                                          scratch_pool));

  FUNC0(FUNC9(wc_ctx->db, local_abspath, cancel_func, cancel_baton,
                         scratch_pool));

  return SVN_NO_ERROR;
}