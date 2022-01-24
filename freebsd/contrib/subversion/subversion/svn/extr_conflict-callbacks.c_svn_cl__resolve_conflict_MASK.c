#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_wc_operation_t ;
typedef  scalar_t__ svn_wc_conflict_reason_t ;
typedef  scalar_t__ svn_wc_conflict_action_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_25__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_cmdline_prompt_baton_t ;
struct TYPE_26__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  scalar_t__ svn_client_conflict_option_id_t ;
typedef  int /*<<< orphan*/  svn_cl__conflict_stats_t ;
typedef  scalar_t__ svn_cl__accept_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_27__ {scalar_t__ nelts; } ;
typedef  TYPE_3__ apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ SVN_ERR_CL_NO_EXTERNAL_EDITOR ; 
 scalar_t__ SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL ; 
 scalar_t__ SVN_ERR_EXTERNAL_PROGRAM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 TYPE_1__* SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,char*,scalar_t__,char const*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ svn_cl__accept_base ; 
 scalar_t__ svn_cl__accept_edit ; 
 scalar_t__ svn_cl__accept_launch ; 
 scalar_t__ svn_cl__accept_mine_conflict ; 
 scalar_t__ svn_cl__accept_mine_full ; 
 scalar_t__ svn_cl__accept_postpone ; 
 scalar_t__ svn_cl__accept_recommended ; 
 scalar_t__ svn_cl__accept_theirs_conflict ; 
 scalar_t__ svn_cl__accept_theirs_full ; 
 scalar_t__ svn_cl__accept_unspecified ; 
 scalar_t__ svn_cl__accept_working ; 
 TYPE_1__* FUNC4 (char const*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (scalar_t__*,TYPE_3__**,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_client_conflict_option_accept_current_wc_state ; 
 scalar_t__ svn_client_conflict_option_base_text ; 
 scalar_t__ svn_client_conflict_option_incoming_text ; 
 scalar_t__ svn_client_conflict_option_incoming_text_where_conflicted ; 
 scalar_t__ svn_client_conflict_option_merged_text ; 
 scalar_t__ svn_client_conflict_option_postpone ; 
 scalar_t__ svn_client_conflict_option_unspecified ; 
 scalar_t__ svn_client_conflict_option_update_any_moved_away_children ; 
 scalar_t__ svn_client_conflict_option_update_move_destination ; 
 scalar_t__ svn_client_conflict_option_working_text ; 
 scalar_t__ svn_client_conflict_option_working_text_where_conflicted ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC17 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 TYPE_1__* FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 scalar_t__ FUNC21 (char const*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_wc_conflict_action_edit ; 
 scalar_t__ svn_wc_conflict_reason_deleted ; 
 scalar_t__ svn_wc_conflict_reason_moved_away ; 
 scalar_t__ svn_wc_conflict_reason_replaced ; 
 scalar_t__ svn_wc_operation_switch ; 
 scalar_t__ svn_wc_operation_update ; 

svn_error_t *
FUNC22(svn_boolean_t *quit,
                         svn_boolean_t *external_failed,
                         svn_boolean_t *printed_summary,
                         svn_client_conflict_t *conflict,
                         svn_cl__accept_t accept_which,
                         const char *editor_cmd,
                         const char *path_prefix,
                         svn_cmdline_prompt_baton_t *pb,
                         svn_cl__conflict_stats_t *conflict_stats,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *scratch_pool)
{
  svn_boolean_t text_conflicted;
  apr_array_header_t *props_conflicted;
  svn_boolean_t tree_conflicted;
  const char *local_abspath;
  svn_client_conflict_option_id_t option_id;

  FUNC0(FUNC5(&text_conflicted,
                                             &props_conflicted,
                                             &tree_conflicted,
                                             conflict,
                                             scratch_pool,
                                             scratch_pool));
  local_abspath = FUNC7(conflict);

  if (accept_which == svn_cl__accept_unspecified)
    {
      option_id = svn_client_conflict_option_unspecified;
    }
  else if (accept_which == svn_cl__accept_postpone)
    {
      option_id = svn_client_conflict_option_postpone;
    }
  else if (accept_which == svn_cl__accept_base)
    {
      option_id = svn_client_conflict_option_base_text;
    }
  else if (accept_which == svn_cl__accept_working)
    {
      option_id = svn_client_conflict_option_merged_text;

      if (text_conflicted)
        {
          const char *mime_type =
            FUNC12(conflict);

          /* There is no merged text for binary conflicts, behave as
           * if 'mine-full' was chosen. */
          if (mime_type && FUNC21(mime_type))
            option_id = svn_client_conflict_option_working_text;
        }
      else if (tree_conflicted)
        {
          /* For tree conflicts, map 'working' to 'accept current working
           * copy state'. */
          option_id = svn_client_conflict_option_accept_current_wc_state;
        }
    }
  else if (accept_which == svn_cl__accept_theirs_conflict)
    {
      option_id = svn_client_conflict_option_incoming_text_where_conflicted;
    }
  else if (accept_which == svn_cl__accept_mine_conflict)
    {
      option_id = svn_client_conflict_option_working_text_where_conflicted;

      if (tree_conflicted)
        {
          svn_wc_operation_t operation;

          operation = FUNC9(conflict);
          if (operation == svn_wc_operation_update ||
              operation == svn_wc_operation_switch)
            {
              svn_wc_conflict_reason_t reason;

              reason = FUNC8(conflict);
              if (reason == svn_wc_conflict_reason_moved_away)
                {
                  /* Map 'mine-conflict' to 'update move destination'. */
                  option_id =
                    svn_client_conflict_option_update_move_destination;
                }
              else if (reason == svn_wc_conflict_reason_deleted ||
                       reason == svn_wc_conflict_reason_replaced)
                {
                  svn_wc_conflict_action_t action;
                  svn_node_kind_t node_kind;

                  action = FUNC6(conflict);
                  node_kind =
                    FUNC14(conflict);

                  if (action == svn_wc_conflict_action_edit &&
                      node_kind == svn_node_dir)
                    {
                      /* Map 'mine-conflict' to 'update any moved away
                       * children'. */
                      option_id =
                        svn_client_conflict_option_update_any_moved_away_children;
                    }
                }
            }
        }
    }
  else if (accept_which == svn_cl__accept_theirs_full)
    {
      option_id = svn_client_conflict_option_incoming_text;
    }
  else if (accept_which == svn_cl__accept_mine_full)
    {
      option_id = svn_client_conflict_option_working_text;
    }
  else if (accept_which == svn_cl__accept_edit)
    {
      option_id = svn_client_conflict_option_unspecified;

      if (local_abspath)
        {
          if (*external_failed)
            {
              option_id = svn_client_conflict_option_postpone;
            }
          else
            {
              svn_error_t *err;

              err = FUNC15(local_abspath,
                                                      editor_cmd,
                                                      ctx->config,
                                                      scratch_pool);
              if (err && (err->apr_err == SVN_ERR_CL_NO_EXTERNAL_EDITOR ||
                          err->apr_err == SVN_ERR_EXTERNAL_PROGRAM))
                {
                  char buf[1024];
                  const char *message;

                  message = FUNC17(err, buf, sizeof(buf));
                  FUNC0(FUNC16(stderr, scratch_pool, "%s\n",
                                              message));
                  FUNC18(err);
                  *external_failed = TRUE;
                }
              else if (err)
                return FUNC19(err);
              option_id = svn_client_conflict_option_merged_text;
            }
        }
    }
  else if (accept_which == svn_cl__accept_launch)
    {
      const char *base_abspath = NULL;
      const char *my_abspath = NULL;
      const char *their_abspath = NULL;

      option_id = svn_client_conflict_option_unspecified;

      if (text_conflicted)
        FUNC0(FUNC11(NULL, &my_abspath,
                                                      &base_abspath,
                                                      &their_abspath,
                                                      conflict, scratch_pool,
                                                      scratch_pool));

      if (base_abspath && their_abspath && my_abspath && local_abspath)
        {
          if (*external_failed)
            {
              option_id = svn_client_conflict_option_postpone;
            }
          else
            {
              svn_boolean_t remains_in_conflict;
              svn_error_t *err;

              err = FUNC4(base_abspath, their_abspath,
                                                  my_abspath, local_abspath,
                                                  local_abspath, ctx->config,
                                                  &remains_in_conflict,
                                                  scratch_pool);
              if (err && (err->apr_err == SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL ||
                          err->apr_err == SVN_ERR_EXTERNAL_PROGRAM))
                {
                  char buf[1024];
                  const char *message;

                  message = FUNC17(err, buf, sizeof(buf));
                  FUNC0(FUNC16(stderr, scratch_pool, "%s\n",
                                              message));
                  *external_failed = TRUE;
                  return FUNC19(err);
                }
              else if (err)
                return FUNC19(err);

              if (remains_in_conflict)
                option_id = svn_client_conflict_option_postpone;
              else
                option_id = svn_client_conflict_option_merged_text;
            }
        }
    }
  else if (accept_which == svn_cl__accept_recommended)
    {
      svn_client_conflict_option_id_t recommended_id;

      if (tree_conflicted)
        FUNC0(FUNC13(conflict, ctx,
                                                     scratch_pool));
      recommended_id = FUNC10(conflict);
      if (recommended_id != svn_client_conflict_option_unspecified)
        option_id = recommended_id;
      else
        option_id = svn_client_conflict_option_postpone;
    }
  else
    FUNC1();

  /* If we are in interactive mode and either the user gave no --accept
   * option or the option did not apply, then prompt. */
  if (option_id == svn_client_conflict_option_unspecified)
    {
      svn_boolean_t resolved = FALSE;
      svn_boolean_t postponed = FALSE;
      svn_boolean_t printed_description = FALSE;
      svn_error_t *err;

      *quit = FALSE;

      while (!resolved && !postponed && !*quit)
        {
          err = FUNC3(&resolved, &postponed, quit,
                                               external_failed,
                                               printed_summary,
                                               &printed_description,
                                               conflict,
                                               editor_cmd, ctx->config,
                                               path_prefix, pb,
                                               conflict_stats, ctx,
                                               scratch_pool, scratch_pool);
          if (err && err->apr_err == SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE)
            {
              /* Conflict resolution has failed. Let the user try again.
               * It is always possible to break out of this loop with
               * the 'quit' or 'postpone' options. */
              FUNC20(stderr, err, "svn: ");
              FUNC18(err);
              err = SVN_NO_ERROR;
            }
          FUNC0(err);
        }
    }
  else if (option_id != svn_client_conflict_option_postpone)
    FUNC0(FUNC2(conflict, option_id,
                                   text_conflicted,
                                   props_conflicted->nelts > 0 ? "" : NULL,
                                   tree_conflicted,
                                   path_prefix, conflict_stats,
                                   ctx, scratch_pool));

  return SVN_NO_ERROR;
}