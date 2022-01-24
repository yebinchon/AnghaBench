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
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(const char *source_path_or_url,
                                     const svn_opt_revision_t *src_peg_revision,
                                     const char *target_wcpath,
                                     svn_boolean_t dry_run,
                                     const apr_array_header_t *merge_options,
                                     svn_client_ctx_t *ctx,
                                     apr_pool_t *pool)
{
  FUNC0(FUNC1(source_path_or_url, src_peg_revision,
                                       target_wcpath, dry_run, merge_options,
                                       ctx, pool));
  return SVN_NO_ERROR;
}