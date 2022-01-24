#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  hits; int /*<<< orphan*/  cache_internal; TYPE_1__* vtable; int /*<<< orphan*/  reads; scalar_t__ pretend_empty; } ;
typedef  TYPE_2__ svn_cache__t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* get ) (void**,scalar_t__*,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void**,scalar_t__*,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(void **value_p,
               svn_boolean_t *found,
               svn_cache__t *cache,
               const void *key,
               apr_pool_t *result_pool)
{
  svn_error_t *err;

  /* In case any errors happen and are quelched, make sure we start
     out with FOUND set to false. */
  *found = FALSE;
#ifdef SVN_DEBUG
  if (cache->pretend_empty)
    return SVN_NO_ERROR;
#endif

  cache->reads++;
  err = FUNC0(cache,
                     (cache->vtable->get)(value_p,
                                          found,
                                          cache->cache_internal,
                                          key,
                                          result_pool),
                     result_pool);

  if (*found)
    cache->hits++;

  return err;
}