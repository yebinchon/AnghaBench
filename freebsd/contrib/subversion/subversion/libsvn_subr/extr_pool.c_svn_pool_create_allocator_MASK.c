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
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_thread_mutex_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_allocator_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_THREAD_MUTEX_DEFAULT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SVN_ALLOCATOR_RECOMMENDED_MAX_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

apr_allocator_t *
FUNC9(svn_boolean_t thread_safe)
{
  apr_allocator_t *allocator;
  apr_pool_t *pool;

  /* create the allocator and limit it's internal free list to keep
   * memory usage in check */

  if (FUNC2(&allocator))
    FUNC1(EXIT_FAILURE);

  FUNC3(allocator, SVN_ALLOCATOR_RECOMMENDED_MAX_FREE);

  /* create the root pool */

  pool = FUNC8(NULL, allocator);
  FUNC5(allocator, pool);

#if APR_POOL_DEBUG
  apr_pool_tag (pool, "svn root pool");
#endif

  /* By default, allocators are *not* thread-safe. We must provide a mutex
   * if we want thread-safety for that mutex. */

#if APR_HAS_THREADS
  if (thread_safe)
    {
      apr_thread_mutex_t *mutex;
      apr_thread_mutex_create(&mutex, APR_THREAD_MUTEX_DEFAULT, pool);
      apr_allocator_mutex_set(allocator, mutex);
    }
#endif

  /* better safe than sorry */
  FUNC0(allocator != NULL);

  return allocator;
}