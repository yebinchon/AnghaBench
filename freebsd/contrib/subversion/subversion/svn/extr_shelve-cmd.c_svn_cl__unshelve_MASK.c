#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/ * notify_func2; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_15__ {scalar_t__ quiet; int /*<<< orphan*/  dry_run; int /*<<< orphan*/  keep_local; int /*<<< orphan*/  targets; scalar_t__ list; } ;
typedef  TYPE_2__ svn_cl__opt_state_t ;
struct TYPE_16__ {TYPE_1__* ctx; TYPE_2__* opt_state; } ;
typedef  TYPE_3__ svn_cl__cmd_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_17__ {scalar_t__ ind; scalar_t__ argc; } ;
typedef  TYPE_4__ apr_getopt_t ;
struct TYPE_18__ {scalar_t__ nelts; } ;
typedef  TYPE_5__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__**,TYPE_4__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(apr_getopt_t *os,
                 void *baton,
                 apr_pool_t *pool)
{
  svn_cl__opt_state_t *opt_state = ((svn_cl__cmd_baton_t *) baton)->opt_state;
  svn_client_ctx_t *ctx = ((svn_cl__cmd_baton_t *) baton)->ctx;
  const char *local_abspath;
  const char *name;
  apr_array_header_t *targets;

  FUNC0(FUNC8(&local_abspath, "", pool));

  if (opt_state->list)
    {
      if (os->ind < os->argc)
        return FUNC9(SVN_ERR_CL_ARG_PARSING_ERROR, 0, NULL);

      FUNC0(FUNC4(local_abspath,
                           ! opt_state->quiet /*diffstat*/,
                           ctx, pool));
      return SVN_NO_ERROR;
    }

  if (os->ind < os->argc)
    {
      FUNC0(FUNC2(&name, os, pool, pool));
    }
  else
    {
      FUNC0(FUNC3(&name, local_abspath, ctx, pool, pool));
      FUNC0(FUNC7(pool,
                                 FUNC1("unshelving the youngest change, '%s'\n"),
                                 name));
    }

  /* There should be no remaining arguments. */
  FUNC0(FUNC5(&targets, os,
                                                      opt_state->targets,
                                                      ctx, FALSE, pool));
  if (targets->nelts)
    return FUNC9(SVN_ERR_CL_ARG_PARSING_ERROR, 0, NULL);

  if (opt_state->quiet)
    ctx->notify_func2 = NULL; /* Easy out: avoid unneeded work */

  FUNC0(FUNC6(name, local_abspath,
                              opt_state->keep_local, opt_state->dry_run,
                              ctx, pool));
  if (! opt_state->quiet)
    FUNC0(FUNC7(pool, "unshelved '%s'\n", name));

  return SVN_NO_ERROR;
}