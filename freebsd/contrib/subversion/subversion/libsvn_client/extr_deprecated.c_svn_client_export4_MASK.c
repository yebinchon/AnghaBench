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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC1(svn_revnum_t *result_rev,
                   const char *from_path_or_url,
                   const char *to_path,
                   const svn_opt_revision_t *peg_revision,
                   const svn_opt_revision_t *revision,
                   svn_boolean_t overwrite,
                   svn_boolean_t ignore_externals,
                   svn_depth_t depth,
                   const char *native_eol,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  return FUNC0(result_rev, from_path_or_url, to_path,
                            peg_revision, revision, overwrite, ignore_externals,
                            FALSE, depth, native_eol, ctx, pool);
}