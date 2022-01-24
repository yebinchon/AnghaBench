#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ changed_paths2; scalar_t__ changed_paths; scalar_t__ revprops; } ;
typedef  TYPE_1__ svn_log_entry_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 

svn_log_entry_t *
FUNC9(const svn_log_entry_t *log_entry, apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  svn_log_entry_t *new_entry = FUNC4(pool, sizeof(*new_entry));

  *new_entry = *log_entry;

  if (log_entry->revprops)
    new_entry->revprops = FUNC8(log_entry->revprops, pool);

  if (log_entry->changed_paths2)
    {
      new_entry->changed_paths2 = FUNC1(pool);

      for (hi = FUNC0(pool, log_entry->changed_paths2);
           hi; hi = FUNC2(hi))
        {
          const void *key;
          void *change;

          FUNC3(hi, &key, NULL, &change);

          FUNC6(new_entry->changed_paths2, FUNC5(pool, key),
                        FUNC7(change, pool));
        }
    }

  /* We can't copy changed_paths by itself without using deprecated code,
     but we don't have to, as this function was new after the introduction
     of the changed_paths2 field. */
  new_entry->changed_paths = new_entry->changed_paths2;

  return new_entry;
}