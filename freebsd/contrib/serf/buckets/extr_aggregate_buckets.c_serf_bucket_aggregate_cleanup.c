
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int aggregate_context_t ;


 int cleanup_aggregate (int *,int *) ;

void serf_bucket_aggregate_cleanup(
    serf_bucket_t *bucket, serf_bucket_alloc_t *allocator)
{
    aggregate_context_t *ctx = bucket->data;

    cleanup_aggregate(ctx, allocator);
}
