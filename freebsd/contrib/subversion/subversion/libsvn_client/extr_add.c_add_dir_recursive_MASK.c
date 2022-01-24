#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_magic__cookie_t ;
struct TYPE_21__ {scalar_t__ kind; scalar_t__ special; } ;
typedef  TYPE_1__ svn_io_dirent2_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
struct TYPE_23__ {int /*<<< orphan*/  cancel_baton; TYPE_2__* (* cancel_func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  config; int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  notify_func2; } ;
typedef  TYPE_3__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ SVN_ERR_ENTRY_EXISTS ; 
 TYPE_2__* SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 TYPE_2__* FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ **,char const*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_immediates ; 
 char* FUNC9 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_2__* FUNC11 (TYPE_2__*) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ **,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC20(const char *dir_abspath,
                  svn_depth_t depth,
                  svn_boolean_t force,
                  svn_boolean_t no_autoprops,
                  svn_magic__cookie_t *magic_cookie,
                  apr_hash_t *config_autoprops,
                  svn_boolean_t refresh_ignores,
                  apr_array_header_t *ignores,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  apr_pool_t *iterpool;
  apr_hash_t *dirents;
  apr_hash_index_t *hi;
  svn_boolean_t entry_exists = FALSE;

  /* Check cancellation; note that this catches recursive calls too. */
  if (ctx->cancel_func)
    FUNC0(ctx->cancel_func(ctx->cancel_baton));

  iterpool = FUNC14(scratch_pool);

  /* Add this directory to revision control. */
  err = FUNC16(ctx->wc_ctx, dir_abspath, NULL /*props*/,
                              FALSE /* skip checks */,
                              ctx->notify_func2, ctx->notify_baton2,
                              iterpool);
  if (err)
    {
      if (err->apr_err == SVN_ERR_ENTRY_EXISTS && force)
        {
          FUNC10(err);
          entry_exists = TRUE;
        }
      else if (err)
        {
          return FUNC11(err);
        }
    }

  /* Fetch ignores after adding to handle ignores on the directory itself
     and ancestors via the single db optimization in libsvn_wc */
  if (refresh_ignores)
    FUNC0(FUNC17(&ignores, ctx->wc_ctx, dir_abspath,
                                ctx->config, result_pool, iterpool));

  /* If DIR_ABSPATH is the root of an unversioned subtree then get the
     following "autoprops":

       1) Explicit and inherited svn:auto-props properties on
          DIR_ABSPATH
       2) auto-props from the CTX->CONFIG hash

     Since this set of autoprops applies to all unversioned children of
     DIR_ABSPATH, we will pass these along to any recursive calls to
     add_dir_recursive() and calls to add_file() below.  Thus sparing
     these callees from looking up the same information. */
  if (!entry_exists && config_autoprops == NULL)
    {
      FUNC0(FUNC8(&config_autoprops, dir_abspath,
                                             ctx, scratch_pool, iterpool));
    }

  FUNC0(FUNC12(&dirents, dir_abspath, TRUE, scratch_pool,
                              iterpool));

  /* Read the directory entries one by one and add those things to
     version control. */
  for (hi = FUNC2(scratch_pool, dirents); hi; hi = FUNC3(hi))
    {
      const char *name = FUNC4(hi);
      svn_io_dirent2_t *dirent = FUNC5(hi);
      const char *abspath;

      FUNC13(iterpool);

      /* Check cancellation so you can cancel during an
       * add of a directory with lots of files. */
      if (ctx->cancel_func)
        FUNC0(ctx->cancel_func(ctx->cancel_baton));

      /* Skip over SVN admin directories. */
      if (FUNC18(name, iterpool))
        continue;

      if (ignores
          && FUNC19(name, ignores, iterpool))
        continue;

      /* Construct the full path of the entry. */
      abspath = FUNC9(dir_abspath, name, iterpool);

      /* Recurse on directories; add files; ignore the rest. */
      if (dirent->kind == svn_node_dir && depth >= svn_depth_immediates)
        {
          svn_depth_t depth_below_here = depth;
          if (depth == svn_depth_immediates)
            depth_below_here = svn_depth_empty;

          /* When DIR_ABSPATH is the root of an unversioned subtree then
             it and all of its children have the same set of ignores.  So
             save any recursive calls the extra work of finding the same
             set of ignores. */
          if (refresh_ignores && !entry_exists)
            refresh_ignores = FALSE;

          FUNC0(FUNC20(abspath, depth_below_here,
                                    force, no_autoprops,
                                    magic_cookie, config_autoprops,
                                    refresh_ignores, ignores, ctx,
                                    result_pool, iterpool));
        }
      else if ((dirent->kind == svn_node_file || dirent->special)
               && depth >= svn_depth_files)
        {
          err = FUNC1(abspath, magic_cookie, config_autoprops,
                         no_autoprops, ctx, iterpool);
          if (err && err->apr_err == SVN_ERR_ENTRY_EXISTS && force)
            FUNC10(err);
          else
            FUNC0(err);
        }
    }

  /* Destroy the per-iteration pool. */
  FUNC15(iterpool);

  return SVN_NO_ERROR;
}