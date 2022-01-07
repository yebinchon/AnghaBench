
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_type_t ;
struct TYPE_4__ {int * allocator; void* data; int const* type; } ;
typedef TYPE_1__ serf_bucket_t ;
typedef int serf_bucket_alloc_t ;


 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;

serf_bucket_t *serf_bucket_create(
    const serf_bucket_type_t *type,
    serf_bucket_alloc_t *allocator,
    void *data)
{
    serf_bucket_t *bkt = serf_bucket_mem_alloc(allocator, sizeof(*bkt));

    bkt->type = type;
    bkt->data = data;
    bkt->allocator = allocator;

    return bkt;
}
