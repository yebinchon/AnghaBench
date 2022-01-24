#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_18__ {scalar_t__ depth; int /*<<< orphan*/  changelists; int /*<<< orphan*/  targets; } ;
typedef  TYPE_2__ svn_cl__opt_state_t ;
struct TYPE_19__ {int /*<<< orphan*/ * ctx; TYPE_2__* opt_state; } ;
typedef  TYPE_3__ svn_cl__cmd_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;
struct TYPE_20__ {int /*<<< orphan*/  nelts; } ;
typedef  TYPE_4__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CL_INSUFFICIENT_ARGS ; 
 scalar_t__ SVN_ERR_WC_INVALID_OPERATION_DEPTH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__**,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_unknown ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 

svn_error_t *
FUNC10(apr_getopt_t *os,
               void *baton,
               apr_pool_t *scratch_pool)
{
  svn_cl__opt_state_t *opt_state = ((svn_cl__cmd_baton_t *) baton)->opt_state;
  svn_client_ctx_t *ctx = ((svn_cl__cmd_baton_t *) baton)->ctx;
  apr_array_header_t *targets = NULL;
  svn_error_t *err;

  FUNC1(FUNC3(&targets, os,
                                                      opt_state->targets,
                                                      ctx, FALSE,
                                                      scratch_pool));

  /* Revert has no implicit dot-target `.', so don't you put that code here! */
  if (! targets->nelts)
    return FUNC7(SVN_ERR_CL_INSUFFICIENT_ARGS, 0, NULL);

  /* Revert is especially conservative, by default it is as
     nonrecursive as possible. */
  if (opt_state->depth == svn_depth_unknown)
    opt_state->depth = svn_depth_empty;

  FUNC1(FUNC5(&targets, targets, scratch_pool));

  FUNC1(FUNC4(targets));

  err = FUNC6(targets, opt_state->depth,
                           opt_state->changelists,
                           FALSE /* clear_changelists */,
                           FALSE /* metadata_only */,
                           ctx, scratch_pool);
  if (err
      && (err->apr_err == SVN_ERR_WC_INVALID_OPERATION_DEPTH)
      && (! FUNC0(opt_state->depth)))
    {
      err = FUNC8
        (err, FUNC2("Try 'svn revert --depth infinity' instead?"));
    }

  return FUNC9(err);
}