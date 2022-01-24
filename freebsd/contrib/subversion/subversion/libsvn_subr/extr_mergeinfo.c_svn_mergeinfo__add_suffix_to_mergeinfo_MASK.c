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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*) ; 

svn_error_t *
FUNC9(svn_mergeinfo_t *out_mergeinfo,
                                       svn_mergeinfo_t mergeinfo,
                                       const char *suffix_relpath,
                                       apr_pool_t *result_pool,
                                       apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  FUNC0(suffix_relpath && FUNC8(suffix_relpath));

  *out_mergeinfo = FUNC2(result_pool);

  for (hi = FUNC1(scratch_pool, mergeinfo);
       hi;
       hi = FUNC3(hi))
    {
      const char *fspath = FUNC4(hi);
      svn_rangelist_t *rangelist = FUNC5(hi);

      FUNC7(*out_mergeinfo,
                    FUNC6(fspath, suffix_relpath, result_pool),
                    rangelist);
    }

  return SVN_NO_ERROR;
}