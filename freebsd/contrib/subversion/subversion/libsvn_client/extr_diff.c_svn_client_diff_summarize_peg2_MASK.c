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
typedef  int /*<<< orphan*/  svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_client_diff_summarize_func_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**,char const***,int /*<<< orphan*/ ,void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC4(const char *path_or_url,
                               const svn_opt_revision_t *peg_revision,
                               const svn_opt_revision_t *start_revision,
                               const svn_opt_revision_t *end_revision,
                               svn_depth_t depth,
                               svn_boolean_t ignore_ancestry,
                               const apr_array_header_t *changelists,
                               svn_client_diff_summarize_func_t summarize_func,
                               void *summarize_baton,
                               svn_client_ctx_t *ctx,
                               apr_pool_t *pool)
{
  const svn_diff_tree_processor_t *diff_processor;
  const char **p_root_relpath;

  FUNC0(FUNC2(
                     &diff_processor, &p_root_relpath,
                     summarize_func, summarize_baton,
                     path_or_url, pool, pool));

  return FUNC3(FUNC1(p_root_relpath, NULL, NULL,
                                 path_or_url, path_or_url,
                                 start_revision, end_revision,
                                 peg_revision, FALSE /* no_peg_revision */,
                                 depth, ignore_ancestry, changelists,
                                 FALSE /* text_deltas */,
                                 diff_processor, ctx, pool, pool));
}