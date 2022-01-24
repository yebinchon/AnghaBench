#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
struct TYPE_21__ {int /*<<< orphan*/  log_msg_baton3; scalar_t__ log_msg_func3; int /*<<< orphan*/  config; int /*<<< orphan*/ * notify_func2; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_22__ {scalar_t__ depth; scalar_t__ quiet; int /*<<< orphan*/  dry_run; int /*<<< orphan*/  keep_local; int /*<<< orphan*/  changelists; int /*<<< orphan*/  targets; scalar_t__ remove; scalar_t__ list; } ;
typedef  TYPE_2__ svn_cl__opt_state_t ;
struct TYPE_23__ {TYPE_1__* ctx; TYPE_2__* opt_state; } ;
typedef  TYPE_3__ svn_cl__cmd_baton_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_24__ {scalar_t__ ind; scalar_t__ argc; } ;
typedef  TYPE_4__ apr_getopt_t ;
struct TYPE_25__ {int /*<<< orphan*/  nelts; } ;
typedef  TYPE_5__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 int /*<<< orphan*/  SVN_ERR_CL_INSUFFICIENT_ARGS ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char const**,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__**,TYPE_4__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_5__**,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char const*,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,TYPE_5__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char const*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ svn_depth_infinity ; 
 scalar_t__ svn_depth_unknown ; 
 int /*<<< orphan*/ * FUNC13 (char const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC17(apr_getopt_t *os,
               void *baton,
               apr_pool_t *pool)
{
  svn_cl__opt_state_t *opt_state = ((svn_cl__cmd_baton_t *) baton)->opt_state;
  svn_client_ctx_t *ctx = ((svn_cl__cmd_baton_t *) baton)->ctx;
  const char *local_abspath;
  const char *name;
  apr_array_header_t *targets;
  svn_boolean_t has_changes;

  if (opt_state->quiet)
    ctx->notify_func2 = NULL; /* Easy out: avoid unneeded work */

  FUNC0(FUNC13(&local_abspath, "", pool));

  if (opt_state->list)
    {
      if (os->ind < os->argc)
        return FUNC14(SVN_ERR_CL_ARG_PARSING_ERROR, 0, NULL);

      FUNC0(FUNC3(local_abspath,
                           ! opt_state->quiet /*diffstat*/,
                           ctx, pool));
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC2(&name, os, pool, pool));

  if (opt_state->remove)
    {
      if (os->ind < os->argc)
        return FUNC14(SVN_ERR_CL_ARG_PARSING_ERROR, 0, NULL);

      FUNC0(FUNC11(name, local_abspath,
                                        opt_state->dry_run,
                                        ctx, pool));
      if (! opt_state->quiet)
        FUNC0(FUNC12(pool, "deleted '%s'\n", name));
      return SVN_NO_ERROR;
    }

  /* Parse the remaining arguments as paths. */
  FUNC0(FUNC4(&targets, os,
                                                      opt_state->targets,
                                                      ctx, FALSE, pool));
  FUNC16(targets, pool);

  {
      svn_depth_t depth = opt_state->depth;
      svn_error_t *err;

      /* shelve has no implicit dot-target `.', so don't you put that
         code here! */
      if (!targets->nelts)
        return FUNC14(SVN_ERR_CL_INSUFFICIENT_ARGS, 0, NULL);

      FUNC0(FUNC5(targets));

      if (depth == svn_depth_unknown)
        depth = svn_depth_infinity;

      FUNC0(FUNC7(&targets, targets, pool));

      if (ctx->log_msg_func3)
        FUNC0(FUNC8(&ctx->log_msg_baton3,
                                           opt_state, NULL, ctx->config,
                                           pool));
      err = FUNC10(name,
                              targets, depth, opt_state->changelists,
                              opt_state->keep_local, opt_state->dry_run,
                              ctx, pool);
      if (ctx->log_msg_func3)
        FUNC0(FUNC6(ctx->log_msg_baton3,
                                        err, pool));
      else
        FUNC0(err);
  }

  /* If no modifications were shelved, throw an error. */
  FUNC0(FUNC9(&has_changes,
                                       name, local_abspath, ctx, pool));
  if (! has_changes)
    {
      FUNC0(FUNC11(name, local_abspath,
                                        opt_state->dry_run, ctx, pool));
      return FUNC15(SVN_ERR_ILLEGAL_TARGET, NULL,
                               FUNC1("No changes were shelved"));
    }

  if (! opt_state->quiet)
    FUNC0(FUNC12(pool, "shelved '%s'\n", name));

  return SVN_NO_ERROR;
}