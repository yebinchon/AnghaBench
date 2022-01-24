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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

__attribute__((used)) static svn_boolean_t
FUNC4(const char *local_abspath,
                apr_hash_t *subtrees,
                apr_pool_t *pool)
{
  if (subtrees)
    {
      apr_hash_index_t *hi;

      for (hi = FUNC0(pool, subtrees);
           hi; hi = FUNC1(hi))
        {
          const char *path_touched_by_merge = FUNC2(hi);
          if (FUNC3(local_abspath, path_touched_by_merge))
            return TRUE;
        }
    }
  return FALSE;
}