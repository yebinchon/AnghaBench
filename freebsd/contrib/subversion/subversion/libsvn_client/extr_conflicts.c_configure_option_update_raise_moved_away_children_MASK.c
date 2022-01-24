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
typedef  scalar_t__ svn_wc_operation_t ;
typedef  scalar_t__ svn_wc_conflict_reason_t ;
typedef  scalar_t__ svn_wc_conflict_action_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resolve_update_raise_moved_away ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_client_conflict_option_update_any_moved_away_children ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_wc_conflict_action_edit ; 
 scalar_t__ svn_wc_conflict_reason_deleted ; 
 scalar_t__ svn_wc_conflict_reason_replaced ; 
 scalar_t__ svn_wc_operation_switch ; 
 scalar_t__ svn_wc_operation_update ; 

__attribute__((used)) static svn_error_t *
FUNC6(
  svn_client_conflict_t *conflict,
  apr_array_header_t *options)
{
  svn_wc_operation_t operation;
  svn_wc_conflict_action_t incoming_change;
  svn_wc_conflict_reason_t local_change;
  svn_node_kind_t victim_node_kind;

  operation = FUNC4(conflict);
  incoming_change = FUNC2(conflict);
  local_change = FUNC3(conflict);
  victim_node_kind = FUNC5(conflict);

  if ((operation == svn_wc_operation_update ||
       operation == svn_wc_operation_switch) &&
      incoming_change == svn_wc_conflict_action_edit &&
      (local_change == svn_wc_conflict_reason_deleted ||
       local_change == svn_wc_conflict_reason_replaced) &&
      victim_node_kind == svn_node_dir)
    {
      FUNC1(
        options, conflict,
        svn_client_conflict_option_update_any_moved_away_children,
        FUNC0("Update any moved-away children"),
        FUNC0("prepare for updating moved-away children, if any"),
        resolve_update_raise_moved_away);
    }

  return SVN_NO_ERROR;
}