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
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_revnum_t *youngest_merged_rev,
                         svn_mergeinfo_t target_history_as_mergeinfo,
                         svn_mergeinfo_t source_mergeinfo,
                         apr_pool_t *scratch_pool)
{
  svn_mergeinfo_t explicit_source_target_history_intersection;

  FUNC0(FUNC4(
            &explicit_source_target_history_intersection,
            source_mergeinfo, target_history_as_mergeinfo, TRUE,
            scratch_pool, scratch_pool));
  if (FUNC2(explicit_source_target_history_intersection))
    {
      svn_revnum_t old_rev, young_rev;

      /* Keep track of the youngest revision merged from target to source. */
      FUNC0(FUNC3(
                &young_rev, &old_rev,
                explicit_source_target_history_intersection, scratch_pool));
      if (!FUNC1(*youngest_merged_rev)
          || (young_rev > *youngest_merged_rev))
        *youngest_merged_rev = young_rev;
    }

  return SVN_NO_ERROR;
}