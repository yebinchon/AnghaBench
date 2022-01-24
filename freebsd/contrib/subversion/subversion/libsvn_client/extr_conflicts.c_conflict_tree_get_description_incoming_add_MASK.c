#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_wc_operation_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_8__ {struct conflict_tree_incoming_add_details* tree_conflict_incoming_details; } ;
typedef  TYPE_1__ svn_client_conflict_t ;
struct conflict_tree_incoming_add_details {int dummy; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct conflict_tree_incoming_add_details*,int /*<<< orphan*/ ,scalar_t__,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC4 (struct conflict_tree_incoming_add_details*,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC5 (struct conflict_tree_incoming_add_details*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC6 (struct conflict_tree_incoming_add_details*,int /*<<< orphan*/ ,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,scalar_t__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,scalar_t__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ svn_wc_operation_merge ; 
 scalar_t__ svn_wc_operation_switch ; 
 scalar_t__ svn_wc_operation_update ; 

__attribute__((used)) static svn_error_t *
FUNC12(
  const char **incoming_change_description,
  svn_client_conflict_t *conflict,
  svn_client_ctx_t *ctx,
  apr_pool_t *result_pool,
  apr_pool_t *scratch_pool)
{
  const char *action;
  svn_node_kind_t victim_node_kind;
  svn_wc_operation_t conflict_operation;
  const char *old_repos_relpath;
  svn_revnum_t old_rev;
  svn_node_kind_t old_node_kind;
  const char *new_repos_relpath;
  svn_revnum_t new_rev;
  svn_node_kind_t new_node_kind;
  struct conflict_tree_incoming_add_details *details;

  if (conflict->tree_conflict_incoming_details == NULL)
    return FUNC11(FUNC2(
                             incoming_change_description, conflict, ctx,
                             result_pool, scratch_pool));

  conflict_operation = FUNC9(conflict);
  victim_node_kind = FUNC10(conflict);

  FUNC0(FUNC8(
            &old_repos_relpath, &old_rev, &old_node_kind, conflict,
            scratch_pool, scratch_pool));
  FUNC0(FUNC7(
            &new_repos_relpath, &new_rev, &new_node_kind, conflict,
            scratch_pool, scratch_pool));

  details = conflict->tree_conflict_incoming_details;

  if (conflict_operation == svn_wc_operation_update)
    {
      action = FUNC5(details,
                                                 new_node_kind,
                                                 new_rev,
                                                 result_pool);
    }
  else if (conflict_operation == svn_wc_operation_switch)
    {
      action = FUNC4(details,
                                                 victim_node_kind,
                                                 new_repos_relpath,
                                                 new_rev,
                                                 result_pool);
    }
  else if (conflict_operation == svn_wc_operation_merge)
    {
      if (old_rev < new_rev)
        action = FUNC3(details,
                                                  new_node_kind,
                                                  old_rev,
                                                  new_repos_relpath,
                                                  new_rev,
                                                  result_pool);
      else
        action = FUNC6(
                   details, new_node_kind, old_repos_relpath,
                   old_rev, new_rev, result_pool);
    }

  *incoming_change_description = FUNC1(result_pool, action);

  return SVN_NO_ERROR;
}