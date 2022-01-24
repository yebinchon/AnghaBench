#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ num_used; scalar_t__ next_index; } ;
typedef  TYPE_1__ track_state_t ;
typedef  int /*<<< orphan*/  serf_unfreed_func_t ;
struct TYPE_8__ {int own_allocator; TYPE_1__* track; void* unfreed_baton; int /*<<< orphan*/  unfreed; int /*<<< orphan*/ * allocator; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_2__ serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  allocator_cleanup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

serf_bucket_alloc_t *FUNC5(
    apr_pool_t *pool,
    serf_unfreed_func_t unfreed,
    void *unfreed_baton)
{
    serf_bucket_alloc_t *allocator = FUNC2(pool, sizeof(*allocator));

    allocator->pool = pool;
    allocator->allocator = FUNC3(pool);
    if (allocator->allocator == NULL) {
        /* This most likely means pools are running in debug mode, create our
         * own allocator to deal with memory ourselves */
        FUNC0(&allocator->allocator);
        allocator->own_allocator = 1;
    }
    allocator->unfreed = unfreed;
    allocator->unfreed_baton = unfreed_baton;

#ifdef SERF_DEBUG_BUCKET_USE
    {
        track_state_t *track;

        track = allocator->track = apr_palloc(pool, sizeof(*allocator->track));
        track->next_index = 0;
        track->num_used = 0;
    }
#endif

    /* NOTE: On a fork/exec, the child won't bother cleaning up memory.
             This is just fine... the memory will go away at exec.

       NOTE: If the child will NOT perform an exec, then the parent or
             the child will need to decide who to clean up any
             outstanding connection/buckets (as appropriate).  */
    FUNC4(pool, allocator,
                              allocator_cleanup, apr_pool_cleanup_null);

    return allocator;
}