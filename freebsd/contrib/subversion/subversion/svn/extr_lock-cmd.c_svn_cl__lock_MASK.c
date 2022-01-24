#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {struct notify_lock_baton_t* notify_baton2; int /*<<< orphan*/  notify_func2; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_15__ {int /*<<< orphan*/  force; int /*<<< orphan*/  targets; } ;
typedef  TYPE_2__ svn_cl__opt_state_t ;
struct TYPE_16__ {TYPE_1__* ctx; TYPE_2__* opt_state; } ;
typedef  TYPE_3__ svn_cl__cmd_baton_t ;
struct notify_lock_baton_t {scalar_t__ had_failure; struct notify_lock_baton_t* inner_baton; int /*<<< orphan*/  inner_notify; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;
struct TYPE_17__ {int /*<<< orphan*/  nelts; } ;
typedef  TYPE_4__ apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CL_INSUFFICIENT_ARGS ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  notify_lock_handler ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__**,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char const*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(apr_getopt_t *os,
             void *baton,
             apr_pool_t *pool)
{
  svn_cl__opt_state_t *opt_state = ((svn_cl__cmd_baton_t *) baton)->opt_state;
  svn_client_ctx_t *ctx = ((svn_cl__cmd_baton_t *) baton)->ctx;
  apr_array_header_t *targets;
  const char *comment;
  struct notify_lock_baton_t nlb;

  FUNC0(FUNC3(&targets, os,
                                                      opt_state->targets,
                                                      ctx, FALSE, pool));

  /* We only support locking files, so '.' is not valid. */
  if (! targets->nelts)
    return FUNC7(SVN_ERR_CL_INSUFFICIENT_ARGS, 0, NULL);

  FUNC0(FUNC4(targets));

  /* Get comment. */
  FUNC0(FUNC2(&comment, ctx, opt_state, pool));

  FUNC0(FUNC5(&targets, targets, pool));

  nlb.inner_notify = ctx->notify_func2;
  nlb.inner_baton = ctx->notify_baton2;
  nlb.had_failure = FALSE;

  ctx->notify_func2 = notify_lock_handler;
  ctx->notify_baton2 = &nlb;

  FUNC0(FUNC6(targets, comment, opt_state->force, ctx, pool));

  if (nlb.had_failure)
    return FUNC7(SVN_ERR_ILLEGAL_TARGET, NULL,
                            FUNC1("One or more locks could not be obtained"));

  return SVN_NO_ERROR;
}