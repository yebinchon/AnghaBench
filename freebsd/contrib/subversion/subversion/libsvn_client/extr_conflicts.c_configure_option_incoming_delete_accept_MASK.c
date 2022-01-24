#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_wc_conflict_reason_t ;
typedef  scalar_t__ svn_wc_conflict_action_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_11__ {int /*<<< orphan*/  local_abspath; struct conflict_tree_incoming_delete_details* tree_conflict_incoming_details; } ;
typedef  TYPE_2__ svn_client_conflict_t ;
typedef  int svn_boolean_t ;
struct conflict_tree_incoming_delete_details {int /*<<< orphan*/ * moves; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resolve_incoming_delete_accept ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  svn_client_conflict_option_incoming_delete_accept ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_conflict_action_delete ; 
 scalar_t__ svn_wc_conflict_reason_edited ; 
 scalar_t__ svn_wc_conflict_reason_moved_away ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_client_conflict_t *conflict,
                                        svn_client_ctx_t *ctx,
                                        apr_array_header_t *options,
                                        apr_pool_t *scratch_pool)
{
  svn_wc_conflict_action_t incoming_change;
  svn_wc_conflict_reason_t local_change;
  const char *incoming_new_repos_relpath;
  svn_revnum_t incoming_new_pegrev;

  incoming_change = FUNC4(conflict);
  local_change = FUNC7(conflict);
  FUNC0(FUNC5(
            &incoming_new_repos_relpath, &incoming_new_pegrev,
            NULL, conflict, scratch_pool,
            scratch_pool));

  if (incoming_change == svn_wc_conflict_action_delete)
    {
      struct conflict_tree_incoming_delete_details *incoming_details;
      svn_boolean_t is_incoming_move;

      incoming_details = conflict->tree_conflict_incoming_details;
      is_incoming_move = (incoming_details != NULL &&
                          incoming_details->moves != NULL);
      if (is_incoming_move &&
          (local_change == svn_wc_conflict_reason_edited ||
          local_change == svn_wc_conflict_reason_moved_away))
        {
          /* An option which accepts the incoming deletion makes no sense
           * if we know there was a local move and/or an incoming move. */
          return SVN_NO_ERROR;
        }
      else
        {
          const char *description;
          const char *wcroot_abspath;
          const char *local_abspath;

          FUNC0(FUNC10(&wcroot_abspath, ctx->wc_ctx,
                                     conflict->local_abspath, scratch_pool,
                                     scratch_pool));
          local_abspath = FUNC6(conflict);
          description =
            FUNC3(scratch_pool, FUNC1("accept the deletion of '%s'"),
              FUNC8(FUNC9(wcroot_abspath,
                                                              local_abspath),
                                     scratch_pool));
          FUNC2(
            options, conflict,
            svn_client_conflict_option_incoming_delete_accept,
            FUNC1("Accept incoming deletion"), description,
            resolve_incoming_delete_accept);
        }
    }

  return SVN_NO_ERROR;
}