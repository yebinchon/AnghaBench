#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
struct TYPE_9__ {struct svn_cl__check_externals_failed_notify_baton* notify_baton2; int /*<<< orphan*/  notify_func2; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_10__ {scalar_t__ depth; scalar_t__ set_depth; int /*<<< orphan*/  quiet; int /*<<< orphan*/  parents; int /*<<< orphan*/  adds_as_modification; int /*<<< orphan*/  force; int /*<<< orphan*/  ignore_externals; int /*<<< orphan*/  start_revision; scalar_t__ changelists; int /*<<< orphan*/  targets; } ;
typedef  TYPE_2__ svn_cl__opt_state_t ;
typedef  int /*<<< orphan*/  svn_cl__conflict_stats_t ;
struct TYPE_11__ {TYPE_1__* ctx; int /*<<< orphan*/ * conflict_stats; TYPE_2__* opt_state; } ;
typedef  TYPE_3__ svn_cl__cmd_baton_t ;
typedef  void* svn_boolean_t ;
struct svn_cl__check_externals_failed_notify_baton {struct svn_cl__check_externals_failed_notify_baton* wrapped_baton; void* had_externals_error; int /*<<< orphan*/  wrapped_func; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CL_ERROR_PROCESSING_EXTERNALS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ *,scalar_t__,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_cl__check_externals_failed_notify_wrapper ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct svn_cl__check_externals_failed_notify_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_infinity ; 
 scalar_t__ svn_depth_unknown ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC14(apr_getopt_t *os,
               void *baton,
               apr_pool_t *scratch_pool)
{
  svn_cl__opt_state_t *opt_state = ((svn_cl__cmd_baton_t *) baton)->opt_state;
  svn_cl__conflict_stats_t *conflict_stats =
    ((svn_cl__cmd_baton_t *) baton)->conflict_stats;
  svn_client_ctx_t *ctx = ((svn_cl__cmd_baton_t *) baton)->ctx;
  apr_array_header_t *targets;
  svn_depth_t depth;
  svn_boolean_t depth_is_sticky;
  struct svn_cl__check_externals_failed_notify_baton nwb;
  apr_array_header_t *result_revs;
  apr_array_header_t *conflicted_paths;
  svn_error_t *err = SVN_NO_ERROR;
  svn_error_t *externals_err = SVN_NO_ERROR;

  FUNC0(FUNC3(&targets, os,
                                                      opt_state->targets,
                                                      ctx, FALSE,
                                                      scratch_pool));

  /* Add "." if user passed 0 arguments */
  FUNC13(targets, scratch_pool);

  FUNC0(FUNC7(&targets, targets, scratch_pool));

  FUNC0(FUNC5(targets));

  /* If using changelists, convert targets into a set of paths that
     match the specified changelist(s). */
  if (opt_state->changelists)
    {
      svn_depth_t cl_depth = opt_state->depth;
      if (cl_depth == svn_depth_unknown)
        cl_depth = svn_depth_infinity;
      FUNC0(FUNC4(&targets,
                                       opt_state->changelists, targets,
                                       cl_depth, ctx, scratch_pool,
                                       scratch_pool));
    }

  /* Deal with depthstuffs. */
  if (opt_state->set_depth != svn_depth_unknown)
    {
      depth = opt_state->set_depth;
      depth_is_sticky = TRUE;
    }
  else
    {
      depth = opt_state->depth;
      depth_is_sticky = FALSE;
    }

  nwb.wrapped_func = ctx->notify_func2;
  nwb.wrapped_baton = ctx->notify_baton2;
  nwb.had_externals_error = FALSE;
  ctx->notify_func2 = svn_cl__check_externals_failed_notify_wrapper;
  ctx->notify_baton2 = &nwb;

  FUNC0(FUNC10(&result_revs, targets,
                             &(opt_state->start_revision),
                             depth, depth_is_sticky,
                             opt_state->ignore_externals,
                             opt_state->force,
                             opt_state->adds_as_modification,
                             opt_state->parents,
                             ctx, scratch_pool));

  if (nwb.had_externals_error)
    externals_err = FUNC12(SVN_ERR_CL_ERROR_PROCESSING_EXTERNALS,
                                     NULL,
                                     FUNC1("Failure occurred processing one or "
                                       "more externals definitions"));

  /* Run the interactive resolver if conflicts were raised. */
  FUNC0(FUNC6(&conflicted_paths, conflict_stats,
                                           scratch_pool, scratch_pool));
  if (conflicted_paths)
    FUNC0(FUNC9(conflicted_paths, conflict_stats,
                                   opt_state, ctx, scratch_pool));

  if (! opt_state->quiet)
    {
      err = FUNC2(targets, result_revs, scratch_pool);
      if (err)
        return FUNC11(externals_err, err);

      /* ### Layering problem: This call assumes that the baton we're
       * passing is the one that was originally provided by
       * svn_cl__get_notifier(), but that isn't promised. */
      err = FUNC8(nwb.wrapped_baton,
                                                  scratch_pool);
      if (err)
        return FUNC11(externals_err, err);
    }

  return FUNC11(externals_err, err);
}