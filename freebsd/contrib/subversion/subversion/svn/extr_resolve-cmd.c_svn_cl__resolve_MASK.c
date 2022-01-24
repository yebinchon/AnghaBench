#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_11__ {scalar_t__ depth; scalar_t__ accept_which; scalar_t__ non_interactive; int /*<<< orphan*/  targets; } ;
typedef  TYPE_1__ svn_cl__opt_state_t ;
typedef  int /*<<< orphan*/  svn_cl__conflict_stats_t ;
struct TYPE_12__ {int /*<<< orphan*/ * ctx; int /*<<< orphan*/ * conflict_stats; TYPE_1__* opt_state; } ;
typedef  TYPE_2__ svn_cl__cmd_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;
struct TYPE_13__ {int /*<<< orphan*/  nelts; } ;
typedef  TYPE_3__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ svn_cl__accept_edit ; 
 scalar_t__ svn_cl__accept_launch ; 
 scalar_t__ svn_cl__accept_postpone ; 
 scalar_t__ svn_cl__accept_unspecified ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_infinity ; 
 scalar_t__ svn_depth_unknown ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(apr_getopt_t *os,
                void *baton,
                apr_pool_t *scratch_pool)
{
  svn_cl__opt_state_t *opt_state = ((svn_cl__cmd_baton_t *) baton)->opt_state;
  svn_cl__conflict_stats_t *conflict_stats =
    ((svn_cl__cmd_baton_t *) baton)->conflict_stats;
  svn_client_ctx_t *ctx = ((svn_cl__cmd_baton_t *) baton)->ctx;
  apr_array_header_t *targets;

  FUNC0(FUNC2(&targets, os,
                                                      opt_state->targets,
                                                      ctx, FALSE,
                                                      scratch_pool));
  if (! targets->nelts)
    FUNC7(targets, scratch_pool);

  if (opt_state->depth == svn_depth_unknown)
    {
      if (opt_state->accept_which == svn_cl__accept_unspecified)
        opt_state->depth = svn_depth_infinity;
      else
        opt_state->depth = svn_depth_empty;
    }

  FUNC0(FUNC4(&targets, targets, scratch_pool));

  FUNC0(FUNC3(targets));

  if (opt_state->accept_which == svn_cl__accept_unspecified &&
      opt_state->non_interactive)
    {
      return FUNC6(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                              FUNC1("missing --accept option"));
    }
  else if (opt_state->accept_which == svn_cl__accept_postpone ||
           opt_state->accept_which == svn_cl__accept_edit ||
           opt_state->accept_which == svn_cl__accept_launch)
    {
      return FUNC6(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                              FUNC1("invalid 'accept' ARG"));
    }

  FUNC0(FUNC5(targets, conflict_stats,
                                 opt_state, ctx, scratch_pool));

  return SVN_NO_ERROR;
}