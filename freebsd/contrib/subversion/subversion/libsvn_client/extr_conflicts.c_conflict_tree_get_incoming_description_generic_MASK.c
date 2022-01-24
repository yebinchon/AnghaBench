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
typedef  int /*<<< orphan*/  svn_wc_operation_t ;
typedef  scalar_t__ svn_wc_conflict_action_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map_conflict_action ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_node_unknown ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ svn_wc_conflict_action_add ; 
 scalar_t__ svn_wc_conflict_action_delete ; 
 scalar_t__ svn_wc_conflict_action_edit ; 
 scalar_t__ svn_wc_conflict_action_replace ; 

__attribute__((used)) static svn_error_t *
FUNC11(
  const char **incoming_change_description,
  svn_client_conflict_t *conflict,
  svn_client_ctx_t *ctx,
  apr_pool_t *result_pool,
  apr_pool_t *scratch_pool)
{
  const char *action;
  svn_node_kind_t incoming_kind;
  svn_wc_conflict_action_t conflict_action;
  svn_wc_operation_t conflict_operation;

  conflict_action = FUNC5(conflict);
  conflict_operation = FUNC8(conflict);

  /* Determine the node kind of the incoming change. */
  incoming_kind = svn_node_unknown;
  if (conflict_action == svn_wc_conflict_action_edit ||
      conflict_action == svn_wc_conflict_action_delete)
    {
      /* Change is acting on 'src_left' version of the node. */
      FUNC0(FUNC7(
                NULL, NULL, &incoming_kind, conflict, scratch_pool,
                scratch_pool));
    }
  else if (conflict_action == svn_wc_conflict_action_add ||
           conflict_action == svn_wc_conflict_action_replace)
    {
      /* Change is acting on 'src_right' version of the node.
       *
       * ### For 'replace', the node kind is ambiguous. However, src_left
       * ### is NULL for replace, so we must use src_right. */
      FUNC0(FUNC6(
                NULL, NULL, &incoming_kind, conflict, scratch_pool,
                scratch_pool));
    }

  action = FUNC4(incoming_kind, conflict_action,
                                    conflict_operation);
  if (action)
    {
      *incoming_change_description = FUNC3(result_pool, action);
    }
  else
    {
      /* A catch-all message for very rare or nominally impossible cases.
         It will not be pretty, but is closer to an internal error than
         an ordinary user-facing string. */
      *incoming_change_description = FUNC2(result_pool,
                                       FUNC1("incoming %s %s"),
                                       FUNC9(incoming_kind),
                                       FUNC10(map_conflict_action,
                                                          conflict_action));
    }
  return SVN_NO_ERROR;
}