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
 scalar_t__ FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static svn_boolean_t
FUNC5(apr_hash_t *externals,
                 const char *local_abspath,
                 apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  /* First try: does the path exist as a key in the hash? */
  if (FUNC4(externals, local_abspath))
    return TRUE;

  /* Failing that, we need to check if any external is a child of
     LOCAL_ABSPATH.  */
  for (hi = FUNC0(scratch_pool, externals);
       hi;
       hi = FUNC1(hi))
    {
      const char *external_abspath = FUNC2(hi);

      if (FUNC3(local_abspath, external_abspath, NULL))
        return TRUE;
    }

  return FALSE;
}