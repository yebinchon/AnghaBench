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
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;
typedef  TYPE_1__ svn_rangelist_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*,char const*) ; 
 TYPE_1__* FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(svn_mergeinfo_t *output,
                           svn_mergeinfo_t mergeinfo,
                           const char *path,
                           svn_revnum_t start,
                           svn_revnum_t end,
                           svn_boolean_t inheritable,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  svn_mergeinfo_t inheritable_mergeinfo = FUNC2(result_pool);

  for (hi = FUNC1(scratch_pool, mergeinfo);
       hi;
       hi = FUNC3(hi))
    {
      const char *key = FUNC5(hi);
      apr_ssize_t keylen = FUNC6(hi);
      svn_rangelist_t *rangelist = FUNC7(hi);
      svn_rangelist_t *inheritable_rangelist;

      if (!path || FUNC9(path, key) == 0)
        FUNC0(FUNC11(&inheritable_rangelist, rangelist,
                                           start, end, inheritable,
                                           result_pool, scratch_pool));
      else
        inheritable_rangelist = FUNC10(rangelist, result_pool);

      /* Only add this rangelist if some ranges remain.  A rangelist with
         a path mapped to an empty rangelist is not syntactically valid */
      if (inheritable_rangelist->nelts)
        FUNC4(inheritable_mergeinfo,
                     FUNC8(result_pool, key, keylen), keylen,
                     inheritable_rangelist);
    }
  *output = inheritable_mergeinfo;
  return SVN_NO_ERROR;
}