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
typedef  int /*<<< orphan*/  svn_wc_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static svn_error_t *
FUNC8(apr_hash_t **entries_pruned,
              apr_hash_t *entries_all,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  if (!entries_all)
    {
      *entries_pruned = NULL;
      return SVN_NO_ERROR;
    }

  /* I think it will be common for there to be no deleted entries, so
     it is worth checking for that case as we can optimise it. */
  for (hi = FUNC1(scratch_pool, entries_all);
       hi;
       hi = FUNC3(hi))
    {
      svn_boolean_t hidden;

      FUNC0(FUNC7(&hidden,
                                      FUNC5(hi)));
      if (hidden)
        break;
    }

  if (! hi)
    {
      /* There are no deleted entries, so we can use the full hash */
      *entries_pruned = entries_all;
      return SVN_NO_ERROR;
    }

  /* Construct pruned hash without deleted entries */
  *entries_pruned = FUNC2(result_pool);
  for (hi = FUNC1(scratch_pool, entries_all);
       hi;
       hi = FUNC3(hi))
    {
      const void *key = FUNC4(hi);
      const svn_wc_entry_t *entry = FUNC5(hi);
      svn_boolean_t hidden;

      FUNC0(FUNC7(&hidden, entry));
      if (!hidden)
        FUNC6(*entries_pruned, key, entry);
    }

  return SVN_NO_ERROR;
}