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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cmdline_prompt_baton_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_cl__conflict_stats_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_3__ {scalar_t__ nelts; } ;
typedef  TYPE_1__ apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/  const**,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,TYPE_1__**,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_conflict_action_edit ; 
 scalar_t__ svn_wc_conflict_reason_edited ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_boolean_t *resolved,
                               svn_boolean_t *postponed,
                               svn_boolean_t *quit,
                               svn_boolean_t *external_failed,
                               svn_boolean_t *printed_summary,
                               svn_boolean_t *printed_description,
                               svn_client_conflict_t *conflict,
                               const char *editor_cmd,
                               apr_hash_t *config,
                               const char *path_prefix,
                               svn_cmdline_prompt_baton_t *pb,
                               svn_cl__conflict_stats_t *conflict_stats,
                               svn_client_ctx_t *ctx,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  svn_boolean_t text_conflicted;
  apr_array_header_t *props_conflicted;
  svn_boolean_t tree_conflicted;
  const svn_string_t *merged_propval;

  FUNC0(FUNC5(&text_conflicted,
                                             &props_conflicted,
                                             &tree_conflicted,
                                             conflict,
                                             scratch_pool,
                                             scratch_pool));

  /* Print a summary of conflicts before starting interactive resolution */
  if (! *printed_summary)
    {
      FUNC0(FUNC4(conflict_stats, scratch_pool));
      *printed_summary = TRUE;
    }

  *resolved = FALSE;
  if (text_conflicted
       && (FUNC6(conflict) ==
           svn_wc_conflict_action_edit)
       && (FUNC7(conflict) ==
           svn_wc_conflict_reason_edited))
    FUNC0(FUNC2(resolved, postponed, quit, printed_description,
                                 conflict, path_prefix, pb, editor_cmd, config,
                                 conflict_stats, ctx, scratch_pool));
  if (props_conflicted->nelts > 0)
    FUNC0(FUNC1(resolved, postponed, quit, &merged_propval,
                                  path_prefix, pb, editor_cmd, config, conflict,
                                  conflict_stats, ctx, result_pool, scratch_pool));
  if (tree_conflicted)
    FUNC0(FUNC3(resolved, postponed, quit, printed_description,
                                 conflict, path_prefix, pb, conflict_stats, ctx,
                                 scratch_pool));

  return SVN_NO_ERROR;
}