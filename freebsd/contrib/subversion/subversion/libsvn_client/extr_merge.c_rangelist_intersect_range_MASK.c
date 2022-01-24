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
typedef  int /*<<< orphan*/  svn_rangelist_t ;
typedef  int /*<<< orphan*/  svn_merge_range_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_rangelist_t **out_rangelist,
                          const svn_rangelist_t *in_rangelist,
                          svn_revnum_t rev1,
                          svn_revnum_t rev2,
                          svn_boolean_t consider_inheritance,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  FUNC1(rev1 <= rev2);

  if (rev1 < rev2)
    {
      svn_rangelist_t *simple_rangelist =
        FUNC3(rev1, rev2, TRUE, scratch_pool);

      FUNC0(FUNC4(out_rangelist,
                                      simple_rangelist, in_rangelist,
                                      consider_inheritance, result_pool));
    }
  else
    {
      *out_rangelist = FUNC2(result_pool, 0,
                                      sizeof(svn_merge_range_t *));
    }
  return SVN_NO_ERROR;
}