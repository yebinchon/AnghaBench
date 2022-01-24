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
 scalar_t__ FUNC3 (char const*) ; 

svn_boolean_t
FUNC4(const apr_hash_t *props, apr_pool_t *pool)
{
  apr_hash_index_t *hi;

  if (! props)
    return FALSE;

  for (hi = FUNC0(pool, (apr_hash_t *)props); hi;
       hi = FUNC1(hi))
    {
      const char *prop_name = FUNC2(hi);

      if (FUNC3(prop_name))
        return TRUE;
    }

  return FALSE;
}