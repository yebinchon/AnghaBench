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
typedef  int /*<<< orphan*/  svn_rangelist_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_rangelist_t *merged_rangelist,
                          svn_mergeinfo_t merge_history,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  if (FUNC1(merge_history))
    {
      apr_pool_t *iterpool = FUNC6(scratch_pool);
      apr_hash_index_t *hi;

      for (hi = FUNC2(scratch_pool, merge_history);
           hi;
           hi = FUNC3(hi))
        {
          svn_rangelist_t *subtree_rangelist = FUNC4(hi);

          FUNC5(iterpool);
          FUNC0(FUNC8(merged_rangelist, subtree_rangelist,
                                       result_pool, iterpool));
        }
      FUNC7(iterpool);
    }
  return SVN_NO_ERROR;
}