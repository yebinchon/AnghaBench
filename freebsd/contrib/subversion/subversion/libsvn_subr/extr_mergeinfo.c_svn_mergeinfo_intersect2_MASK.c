#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ nelts; } ;
typedef  TYPE_1__ svn_rangelist_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__**,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC14(svn_mergeinfo_t *mergeinfo,
                         svn_mergeinfo_t mergeinfo1,
                         svn_mergeinfo_t mergeinfo2,
                         svn_boolean_t consider_inheritance,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;

  *mergeinfo = FUNC2(result_pool);
  iterpool = FUNC10(scratch_pool);

  /* ### TODO(reint): Do we care about the case when a path in one
     ### mergeinfo hash has inheritable mergeinfo, and in the other
     ### has non-inheritable mergeinfo?  It seems like that path
     ### itself should really be an intersection, while child paths
     ### should not be... */
  for (hi = FUNC1(scratch_pool, mergeinfo1);
       hi; hi = FUNC3(hi))
    {
      const char *path = FUNC4(hi);
      svn_rangelist_t *rangelist1 = FUNC5(hi);
      svn_rangelist_t *rangelist2;

      FUNC9(iterpool);
      rangelist2 = FUNC7(mergeinfo2, path);
      if (rangelist2)
        {
          FUNC0(FUNC13(&rangelist2, rangelist1, rangelist2,
                                          consider_inheritance, iterpool));
          if (rangelist2->nelts > 0)
            FUNC8(*mergeinfo, FUNC6(result_pool, path),
                          FUNC12(rangelist2, result_pool));
        }
    }
  FUNC11(iterpool);
  return SVN_NO_ERROR;
}