#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
struct TYPE_16__ {int /*<<< orphan*/  log_msg_baton3; struct copy_warning_notify_baton* notify_baton2; int /*<<< orphan*/  notify_func2; scalar_t__ config; int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_17__ {scalar_t__ depth; scalar_t__ quiet; int /*<<< orphan*/  revprop_table; int /*<<< orphan*/  changelists; int /*<<< orphan*/  include_externals; int /*<<< orphan*/  keep_changelists; int /*<<< orphan*/  targets; } ;
typedef  TYPE_2__ svn_cl__opt_state_t ;
struct TYPE_18__ {TYPE_1__* ctx; TYPE_2__* opt_state; } ;
typedef  TYPE_3__ svn_cl__cmd_baton_t ;
typedef  void* svn_boolean_t ;
struct copy_warning_notify_baton {scalar_t__ depth; void* warned; struct copy_warning_notify_baton* wrapped_baton; int /*<<< orphan*/  wrapped_func; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;
struct TYPE_19__ {int /*<<< orphan*/  nelts; } ;
typedef  TYPE_4__ apr_array_header_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  SVN_CONFIG_CATEGORY_CONFIG ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_NO_UNLOCK ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_MISCELLANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  copy_warning_notify_func ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__**,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * svn_cl__print_commit_info ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*,scalar_t__,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ svn_depth_infinity ; 
 scalar_t__ svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC11 (char const**,TYPE_4__**,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const**,char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC15(apr_getopt_t *os,
               void *baton,
               apr_pool_t *pool)
{
  svn_error_t *err;
  svn_cl__opt_state_t *opt_state = ((svn_cl__cmd_baton_t *) baton)->opt_state;
  svn_client_ctx_t *ctx = ((svn_cl__cmd_baton_t *) baton)->ctx;
  apr_array_header_t *targets;
  apr_array_header_t *condensed_targets;
  const char *base_dir;
  svn_config_t *cfg;
  svn_boolean_t no_unlock = FALSE;
  struct copy_warning_notify_baton cwnb;

  FUNC0(FUNC4(&targets, os,
                                                      opt_state->targets,
                                                      ctx, FALSE, pool));

  FUNC1(FUNC5(targets),
            FUNC2("Commit targets must be local paths"));

  /* Add "." if user passed 0 arguments. */
  FUNC13(targets, pool);

  FUNC0(FUNC7(&targets, targets, pool));

  /* Condense the targets (like commit does)... */
  FUNC0(FUNC11(&base_dir, &condensed_targets, targets,
                                      TRUE, pool, pool));

  if ((! condensed_targets) || (! condensed_targets->nelts))
    {
      const char *parent_dir, *base_name;

      FUNC0(FUNC14(&parent_dir, &base_name, ctx->wc_ctx,
                                        base_dir, pool, pool));
      if (*base_name)
        base_dir = FUNC3(pool, parent_dir);
    }

  if (opt_state->depth == svn_depth_unknown)
    opt_state->depth = svn_depth_infinity;

  cfg = ctx->config
           ? FUNC12(ctx->config, SVN_CONFIG_CATEGORY_CONFIG)
           : NULL;
  if (cfg)
    FUNC0(FUNC10(cfg, &no_unlock,
                                SVN_CONFIG_SECTION_MISCELLANY,
                                SVN_CONFIG_OPTION_NO_UNLOCK, FALSE));

  /* We're creating a new log message baton because we can use our base_dir
     to store the temp file, instead of the current working directory.  The
     client might not have write access to their working directory, but they
     better have write access to the directory they're committing.  */
  FUNC0(FUNC8(&(ctx->log_msg_baton3),
                                     opt_state, base_dir,
                                     ctx->config, pool));

  /* Copies are done server-side, and cheaply, which means they're
     effectively always done with infinite depth.  This is a potential
     cause of confusion for users trying to commit copied subtrees in
     part by restricting the commit's depth.  See issues #3699 and #3752. */
  if (opt_state->depth < svn_depth_infinity)
    {
      cwnb.wrapped_func = ctx->notify_func2;
      cwnb.wrapped_baton = ctx->notify_baton2;
      cwnb.depth = opt_state->depth;
      cwnb.warned = FALSE;
      ctx->notify_func2 = copy_warning_notify_func;
      ctx->notify_baton2 = &cwnb;
    }

  /* Commit. */
  err = FUNC9(targets,
                           opt_state->depth,
                           no_unlock,
                           opt_state->keep_changelists,
                           TRUE /* commit_as_operations */,
                           opt_state->include_externals, /* file externals */
                           opt_state->include_externals, /* dir externals */
                           opt_state->changelists,
                           opt_state->revprop_table,
                           (opt_state->quiet
                            ? NULL : svn_cl__print_commit_info),
                           NULL,
                           ctx,
                           pool);
  FUNC0(FUNC6(ctx->log_msg_baton3, err, pool));

  return SVN_NO_ERROR;
}