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
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_element__tree_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client__pathrev_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  merge_target_t ;
typedef  int /*<<< orphan*/  element_matching_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_boolean_t *use_sleep,
                          const svn_client__pathrev_t *src_left,
                          const svn_client__pathrev_t *src_right,
                          merge_target_t *target,
                          svn_ra_session_t *ra_session,
                          element_matching_info_t *element_matching_info,
                          svn_boolean_t diff_ignore_ancestry,
                          svn_boolean_t force_delete,
                          svn_boolean_t dry_run,
                          const apr_array_header_t *merge_options,
                          svn_client_ctx_t *ctx,
                          apr_pool_t *scratch_pool)
{
  svn_element__tree_t *tree_left, *tree_right, *tree_target;
  svn_element__tree_t *merge_result;
  void *conflicts;

  FUNC8("--- Merging by elements: "
                 "left=%s, right=%s, matching=%s",
                 FUNC6(src_left, scratch_pool),
                 FUNC6(src_right, scratch_pool),
                 FUNC4(element_matching_info,
                                           scratch_pool));

  /* assign EIDs (in memory) to the source-left, source-right and target
     trees */
  FUNC0(FUNC3(&tree_left, &tree_right, &tree_target,
                               src_left, src_right, target, ra_session,
                               element_matching_info,
                               ctx, scratch_pool, scratch_pool));

  /* perform a tree merge, creating a temporary result (in memory) */
  FUNC0(FUNC5(&merge_result, &conflicts,
                      tree_left, tree_right, tree_target,
                      scratch_pool, scratch_pool));

  /* check for (new style) conflicts in the result; if any, bail out */
  if (conflicts)
    {
      return FUNC7(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                              FUNC1("Merge had conflicts; "
                                "this is not yet supported"));
    }

  /* convert the result to a series of WC edits and apply those to the WC */
  if (dry_run)
    {
      FUNC8("--- Dry run; not writing merge result to WC");
    }
  else
    {
      FUNC0(FUNC2(target, merge_result,
                                       ctx, scratch_pool));
      *use_sleep = TRUE;
    }

  /* forget all the EID metadata */
  return SVN_NO_ERROR;
}