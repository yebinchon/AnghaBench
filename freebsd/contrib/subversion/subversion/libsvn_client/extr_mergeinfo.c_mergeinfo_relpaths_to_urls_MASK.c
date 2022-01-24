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
typedef  scalar_t__ svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(apr_hash_t **out_mergeinfo,
                           svn_mergeinfo_t mergeinfo,
                           const char *repos_root_url,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  *out_mergeinfo = NULL;
  if (mergeinfo)
    {
      apr_hash_index_t *hi;
      apr_hash_t *full_path_mergeinfo = FUNC1(result_pool);

      for (hi = FUNC0(scratch_pool, mergeinfo);
           hi; hi = FUNC2(hi))
        {
          const char *key = FUNC3(hi);
          void *val = FUNC4(hi);

          FUNC5(full_path_mergeinfo,
                        FUNC6(repos_root_url, key + 1,
                                                    result_pool),
                        val);
        }
      *out_mergeinfo = full_path_mergeinfo;
    }

  return SVN_NO_ERROR;
}