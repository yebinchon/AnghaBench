
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pool; } ;
typedef TYPE_1__ serf_bucket_alloc_t ;
typedef int apr_pool_t ;



apr_pool_t *serf_bucket_allocator_get_pool(
    const serf_bucket_alloc_t *allocator)
{
    return allocator->pool;
}
