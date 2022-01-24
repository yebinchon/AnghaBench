#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int state; int /*<<< orphan*/ * attrs; struct TYPE_4__* prev; int /*<<< orphan*/ * state_pool; } ;
typedef  TYPE_1__ svn_ra_serf__xml_estate_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

apr_hash_t *
FUNC6(svn_ra_serf__xml_estate_t *xes,
                              int stop_state)
{
  apr_hash_t *data;
  apr_pool_t *pool;

  FUNC5(xes);
  pool = xes->state_pool;

  data = FUNC1(pool);

  for (; xes != NULL; xes = xes->prev)
    {
      if (xes->attrs != NULL)
        {
          apr_hash_index_t *hi;

          for (hi = FUNC0(pool, xes->attrs); hi;
               hi = FUNC2(hi))
            {
              const void *key;
              apr_ssize_t klen;
              void *val;

              /* Parent name/value lifetimes are at least as long as POOL.  */
              FUNC4(hi, &key, &klen, &val);
              FUNC3(data, key, klen, val);
            }
        }

      if (xes->state == stop_state)
        break;
    }

  return data;
}