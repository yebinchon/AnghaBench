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
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;
typedef  TYPE_1__ svn_rangelist_t ;
typedef  scalar_t__ svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(svn_mergeinfo_t *filtered_mergeinfo,
                                          svn_mergeinfo_t mergeinfo,
                                          svn_revnum_t youngest_rev,
                                          svn_revnum_t oldest_rev,
                                          svn_boolean_t include_range,
                                          apr_pool_t *result_pool,
                                          apr_pool_t *scratch_pool)
{
  FUNC1(FUNC2(youngest_rev));
  FUNC1(FUNC2(oldest_rev));
  FUNC1(oldest_rev < youngest_rev);

  *filtered_mergeinfo = FUNC4(result_pool);

  if (mergeinfo)
    {
      apr_hash_index_t *hi;
      svn_rangelist_t *filter_rangelist =
        FUNC11(oldest_rev, youngest_rev, TRUE,
                                  scratch_pool);

      for (hi = FUNC3(scratch_pool, mergeinfo);
           hi;
           hi = FUNC5(hi))
        {
          const char *path = FUNC6(hi);
          svn_rangelist_t *rangelist = FUNC7(hi);

          if (rangelist->nelts)
            {
              svn_rangelist_t *new_rangelist;

              FUNC0(FUNC9(
                        &new_rangelist, filter_rangelist, rangelist,
                        ! include_range, FALSE, result_pool));

              if (new_rangelist->nelts)
                FUNC10(*filtered_mergeinfo,
                              FUNC8(result_pool, path), new_rangelist);
            }
        }
    }
  return SVN_NO_ERROR;
}