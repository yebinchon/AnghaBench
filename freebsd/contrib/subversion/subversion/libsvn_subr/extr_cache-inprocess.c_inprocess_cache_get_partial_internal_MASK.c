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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/ * (* svn_cache__partial_getter_func_t ) (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct cache_entry {int /*<<< orphan*/  size; int /*<<< orphan*/  value; int /*<<< orphan*/  page; } ;
struct TYPE_4__ {int /*<<< orphan*/  klen; int /*<<< orphan*/  hash; } ;
typedef  TYPE_1__ inprocess_cache_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 struct cache_entry* FUNC1 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void **value_p,
                                     svn_boolean_t *found,
                                     inprocess_cache_t *cache,
                                     const void *key,
                                     svn_cache__partial_getter_func_t func,
                                     void *baton,
                                     apr_pool_t *result_pool)
{
  struct cache_entry *entry = FUNC1(cache->hash, key, cache->klen);
  if (! entry)
    {
      *found = FALSE;
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC2(cache, entry->page));

  *found = TRUE;
  return func(value_p, entry->value, entry->size, baton, result_pool);
}