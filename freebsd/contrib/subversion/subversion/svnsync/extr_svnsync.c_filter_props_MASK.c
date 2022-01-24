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
typedef  int /*<<< orphan*/  (* filter_func_t ) (char const*) ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,void*) ; 

__attribute__((used)) static apr_hash_t *
FUNC6(int *filtered_count, apr_hash_t *props,
             filter_func_t filter,
             apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  apr_hash_t *filtered = FUNC1(pool);
  *filtered_count = 0;

  for (hi = FUNC0(pool, props); hi ; hi = FUNC2(hi))
    {
      const char *propname = FUNC3(hi);
      void *propval = FUNC4(hi);

      /* Copy all properties:
          - not matching the exclude pattern if provided OR
          - matching the include pattern if provided */
      if (!filter || !filter(propname))
        {
          FUNC5(filtered, propname, propval);
        }
      else
        {
          *filtered_count += 1;
        }
    }

  return filtered;
}