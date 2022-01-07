
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int allocator; scalar_t__ own_allocator; scalar_t__ blocks; } ;
typedef TYPE_1__ serf_bucket_alloc_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int apr_allocator_destroy (int ) ;
 int apr_allocator_free (int ,scalar_t__) ;

__attribute__((used)) static apr_status_t allocator_cleanup(void *data)
{
    serf_bucket_alloc_t *allocator = data;


    if (allocator->blocks) {
        apr_allocator_free(allocator->allocator, allocator->blocks);
    }


    if (allocator->own_allocator) {
        apr_allocator_destroy(allocator->allocator);
    }

    return APR_SUCCESS;
}
