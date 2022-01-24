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
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(const char *source_path_or_url,
                      const apr_array_header_t *ranges_to_merge,
                      const svn_opt_revision_t *source_peg_revision,
                      const char *target_wcpath,
                      svn_depth_t depth,
                      svn_boolean_t ignore_ancestry,
                      svn_boolean_t force_delete,
                      svn_boolean_t record_only,
                      svn_boolean_t dry_run,
                      svn_boolean_t allow_mixed_rev,
                      const apr_array_header_t *merge_options,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *pool)
{
  FUNC0(FUNC1(source_path_or_url,
                                ranges_to_merge,
                                source_peg_revision,
                                target_wcpath,
                                depth,
                                ignore_ancestry /*ignore_mergeinfo*/,
                                ignore_ancestry /*diff_ignore_ancestry*/,
                                force_delete, record_only,
                                dry_run, allow_mixed_rev,
                                merge_options, ctx, pool));
  return SVN_NO_ERROR;
}