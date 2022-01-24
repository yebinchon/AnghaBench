#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_19__ {int /*<<< orphan*/  wc_ctx; scalar_t__ conflict_func2; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ SVN_ERR_WC_LOCKED ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int,int,int,int*,TYPE_2__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_revnum_t *result_rev,
                            const char *path,
                            const char *switch_url,
                            const svn_opt_revision_t *peg_revision,
                            const svn_opt_revision_t *revision,
                            svn_depth_t depth,
                            svn_boolean_t depth_is_sticky,
                            svn_boolean_t ignore_externals,
                            svn_boolean_t allow_unver_obstructions,
                            svn_boolean_t ignore_ancestry,
                            svn_boolean_t *timestamp_sleep,
                            svn_client_ctx_t *ctx,
                            apr_pool_t *pool)
{
  const char *local_abspath, *anchor_abspath;
  svn_boolean_t acquired_lock;
  svn_error_t *err, *err1, *err2;
  apr_hash_t *conflicted_paths
    = ctx->conflict_func2 ? FUNC2(pool) : NULL;

  FUNC1(path);

  FUNC0(FUNC4(&local_abspath, path, pool));

  /* Rely on svn_wc__acquire_write_lock setting ANCHOR_ABSPATH even
     when it returns SVN_ERR_WC_LOCKED */
  err = FUNC8(&anchor_abspath,
                                   ctx->wc_ctx, local_abspath, TRUE,
                                   pool, pool);
  if (err && err->apr_err != SVN_ERR_WC_LOCKED)
    return FUNC7(err);

  acquired_lock = (err == SVN_NO_ERROR);
  FUNC5(err);

  err1 = FUNC10(result_rev, conflicted_paths,
                         local_abspath, anchor_abspath,
                         switch_url, peg_revision, revision,
                         depth, depth_is_sticky,
                         ignore_externals,
                         allow_unver_obstructions, ignore_ancestry,
                         timestamp_sleep, ctx, pool);

  /* Give the conflict resolver callback the opportunity to
   * resolve any conflicts that were raised. */
  if (! err1 && ctx->conflict_func2)
    {
      err1 = FUNC3(NULL, conflicted_paths, ctx, pool);
    }

  if (acquired_lock)
    err2 = FUNC9(ctx->wc_ctx, anchor_abspath, pool);
  else
    err2 = SVN_NO_ERROR;

  return FUNC6(err1, err2);
}