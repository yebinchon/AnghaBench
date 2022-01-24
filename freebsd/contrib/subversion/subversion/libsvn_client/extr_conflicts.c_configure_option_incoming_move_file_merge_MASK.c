#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_wc_conflict_action_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_9__ {struct conflict_tree_incoming_delete_details* tree_conflict_incoming_details; } ;
typedef  TYPE_1__ svn_client_conflict_t ;
struct conflict_tree_incoming_delete_details {int /*<<< orphan*/  wc_move_targets; int /*<<< orphan*/ * moves; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const**,TYPE_1__*,int /*<<< orphan*/ *,struct conflict_tree_incoming_delete_details*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resolve_incoming_move_file_text_merge ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *,scalar_t__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ *,scalar_t__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_client_conflict_option_incoming_move_file_text_merge ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_wc_conflict_action_delete ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_client_conflict_t *conflict,
                                          svn_client_ctx_t *ctx,
                                          apr_array_header_t *options,
                                          apr_pool_t *scratch_pool)
{
  svn_node_kind_t victim_node_kind;
  svn_wc_conflict_action_t incoming_change;
  const char *incoming_old_repos_relpath;
  svn_revnum_t incoming_old_pegrev;
  svn_node_kind_t incoming_old_kind;
  const char *incoming_new_repos_relpath;
  svn_revnum_t incoming_new_pegrev;
  svn_node_kind_t incoming_new_kind;
  incoming_change = FUNC5(conflict);
  victim_node_kind = FUNC8(conflict);
  FUNC0(FUNC7(
            &incoming_old_repos_relpath, &incoming_old_pegrev,
            &incoming_old_kind, conflict, scratch_pool,
            scratch_pool));
  FUNC0(FUNC6(
            &incoming_new_repos_relpath, &incoming_new_pegrev,
            &incoming_new_kind, conflict, scratch_pool,
            scratch_pool));

  if (victim_node_kind == svn_node_file &&
      incoming_old_kind == svn_node_file &&
      incoming_new_kind == svn_node_none &&
      incoming_change == svn_wc_conflict_action_delete)
    {
      struct conflict_tree_incoming_delete_details *details;
      const char *description;

      details = conflict->tree_conflict_incoming_details;
      if (details == NULL || details->moves == NULL)
        return SVN_NO_ERROR;

      if (FUNC3(details->wc_move_targets) == 0)
        return SVN_NO_ERROR;

      FUNC0(FUNC4(&description,
                                                           conflict, ctx,
                                                           details,
                                                           scratch_pool,
                                                           scratch_pool));
      FUNC2(
        options, conflict,
        svn_client_conflict_option_incoming_move_file_text_merge,
        FUNC1("Move and merge"), description,
        resolve_incoming_move_file_text_merge);
    }

  return SVN_NO_ERROR;
}