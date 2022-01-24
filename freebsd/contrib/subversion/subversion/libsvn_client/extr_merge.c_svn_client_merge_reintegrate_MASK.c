#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client__conflict_report_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const**,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(const char *source_path_or_url,
                             const svn_opt_revision_t *source_peg_revision,
                             const char *target_wcpath,
                             svn_boolean_t dry_run,
                             const apr_array_header_t *merge_options,
                             svn_client_ctx_t *ctx,
                             apr_pool_t *pool)
{
  const char *target_abspath, *lock_abspath;
  svn_client__conflict_report_t *conflict_report;

  FUNC0(FUNC2(&target_abspath, &lock_abspath,
                                      target_wcpath, ctx, pool));

  if (!dry_run)
    FUNC1(
      FUNC3(&conflict_report,
                               source_path_or_url, source_peg_revision,
                               target_abspath,
                               FALSE /*diff_ignore_ancestry*/,
                               dry_run, merge_options, ctx, pool, pool),
      ctx->wc_ctx, lock_abspath, FALSE /* lock_anchor */, pool);
  else
    FUNC0(FUNC3(&conflict_report,
                                     source_path_or_url, source_peg_revision,
                                     target_abspath,
                                     FALSE /*diff_ignore_ancestry*/,
                                     dry_run, merge_options, ctx, pool, pool));

  FUNC0(FUNC4(conflict_report, pool));
  return SVN_NO_ERROR;
}