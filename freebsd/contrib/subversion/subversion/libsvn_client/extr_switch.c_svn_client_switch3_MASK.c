#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 

svn_error_t *
FUNC6(svn_revnum_t *result_rev,
                   const char *path,
                   const char *switch_url,
                   const svn_opt_revision_t *peg_revision,
                   const svn_opt_revision_t *revision,
                   svn_depth_t depth,
                   svn_boolean_t depth_is_sticky,
                   svn_boolean_t ignore_externals,
                   svn_boolean_t allow_unver_obstructions,
                   svn_boolean_t ignore_ancestry,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  svn_error_t *err;
  svn_boolean_t sleep_here = FALSE;

  if (FUNC5(path))
    return FUNC2(SVN_ERR_ILLEGAL_TARGET, NULL,
                             FUNC0("'%s' is not a local path"), path);

  err = FUNC1(result_rev, path, switch_url,
                                    peg_revision, revision, depth,
                                    depth_is_sticky, ignore_externals,
                                    allow_unver_obstructions,
                                    ignore_ancestry, &sleep_here, ctx, pool);

  /* Sleep to ensure timestamp integrity (we do this regardless of
     errors in the actual switch operation(s)). */
  if (sleep_here)
    FUNC4(path, pool);

  return FUNC3(err);
}