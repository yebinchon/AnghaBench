
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ num_used; scalar_t__ next_index; } ;
typedef TYPE_1__ track_state_t ;
typedef int serf_unfreed_func_t ;
struct TYPE_8__ {int own_allocator; TYPE_1__* track; void* unfreed_baton; int unfreed; int * allocator; int * pool; } ;
typedef TYPE_2__ serf_bucket_alloc_t ;
typedef int apr_pool_t ;


 int allocator_cleanup ;
 int apr_allocator_create (int **) ;
 TYPE_1__* apr_palloc (int *,int) ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int * apr_pool_allocator_get (int *) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_2__*,int ,int ) ;

serf_bucket_alloc_t *serf_bucket_allocator_create(
    apr_pool_t *pool,
    serf_unfreed_func_t unfreed,
    void *unfreed_baton)
{
    serf_bucket_alloc_t *allocator = apr_pcalloc(pool, sizeof(*allocator));

    allocator->pool = pool;
    allocator->allocator = apr_pool_allocator_get(pool);
    if (allocator->allocator == ((void*)0)) {


        apr_allocator_create(&allocator->allocator);
        allocator->own_allocator = 1;
    }
    allocator->unfreed = unfreed;
    allocator->unfreed_baton = unfreed_baton;
    apr_pool_cleanup_register(pool, allocator,
                              allocator_cleanup, apr_pool_cleanup_null);

    return allocator;
}
