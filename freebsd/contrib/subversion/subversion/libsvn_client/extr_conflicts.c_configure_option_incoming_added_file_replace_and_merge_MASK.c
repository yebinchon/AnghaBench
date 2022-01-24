#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_wc_operation_t ;
typedef  scalar_t__ svn_wc_conflict_reason_t ;
typedef  scalar_t__ svn_wc_conflict_action_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_12__ {int /*<<< orphan*/  local_abspath; } ;
typedef  TYPE_2__ svn_client_conflict_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resolve_merge_incoming_added_file_replace_and_merge ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,scalar_t__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  svn_client_conflict_option_incoming_added_file_replace_and_merge ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC11 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_conflict_action_add ; 
 scalar_t__ svn_wc_conflict_reason_obstructed ; 
 scalar_t__ svn_wc_operation_merge ; 

__attribute__((used)) static svn_error_t *
FUNC12(
  svn_client_conflict_t *conflict,
  svn_client_ctx_t *ctx,
  apr_array_header_t *options,
  apr_pool_t *scratch_pool)
{
  svn_wc_operation_t operation;
  svn_wc_conflict_action_t incoming_change;
  svn_wc_conflict_reason_t local_change;
  svn_node_kind_t victim_node_kind;
  const char *incoming_new_repos_relpath;
  svn_revnum_t incoming_new_pegrev;
  svn_node_kind_t incoming_new_kind;

  operation = FUNC7(conflict);
  incoming_change = FUNC4(conflict);
  local_change = FUNC6(conflict);
  victim_node_kind = FUNC8(conflict);
  FUNC0(FUNC5(
            &incoming_new_repos_relpath, &incoming_new_pegrev,
            &incoming_new_kind, conflict, scratch_pool,
            scratch_pool));

  if (operation == svn_wc_operation_merge &&
      victim_node_kind == svn_node_file &&
      incoming_new_kind == svn_node_file &&
      incoming_change == svn_wc_conflict_action_add &&
      local_change == svn_wc_conflict_reason_obstructed)
    {
      const char *wcroot_abspath;
      const char *description;

      FUNC0(FUNC11(&wcroot_abspath, ctx->wc_ctx,
                                 conflict->local_abspath, scratch_pool,
                                 scratch_pool));
      description =
        FUNC3(scratch_pool,
          FUNC1("delete '%s', copy '^/%s@%ld' here, and merge the files"),
          FUNC9(
            FUNC10(wcroot_abspath,
                                     conflict->local_abspath),
            scratch_pool),
          incoming_new_repos_relpath, incoming_new_pegrev);

      FUNC2(
        options, conflict,
        svn_client_conflict_option_incoming_added_file_replace_and_merge,
        FUNC1("Replace and merge"),
        description, resolve_merge_incoming_added_file_replace_and_merge);
    }

  return SVN_NO_ERROR;
}