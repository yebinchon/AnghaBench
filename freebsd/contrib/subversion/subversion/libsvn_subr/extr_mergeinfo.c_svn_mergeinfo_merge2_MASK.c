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
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_mergeinfo_t mergeinfo,
                     svn_mergeinfo_t changes,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;

  if (!FUNC1(changes))
    return SVN_NO_ERROR;

  iterpool = FUNC8(scratch_pool);
  for (hi = FUNC2(scratch_pool, changes); hi; hi = FUNC4(hi))
    {
      const char *key;
      apr_ssize_t klen;
      svn_rangelist_t *to_insert;
      svn_rangelist_t *target;

      /* get ranges to insert and the target ranges list of that insertion */
      FUNC6(hi, (const void**)&key, &klen, (void*)&to_insert);
      target = FUNC3(mergeinfo, key, klen);

      /* if range list exists, just expand on it.
       * Otherwise, add new hash entry. */
      if (target)
        {
          FUNC0(FUNC10(target, to_insert, result_pool,
                                       iterpool));
          FUNC7(iterpool);
        }
      else
        FUNC5(mergeinfo, key, klen, to_insert);
    }

  FUNC9(iterpool);

  return SVN_NO_ERROR;
}