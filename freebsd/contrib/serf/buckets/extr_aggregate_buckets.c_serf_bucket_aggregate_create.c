
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int aggregate_context_t ;


 int * create_aggregate (int *) ;
 int * serf_bucket_create (int *,int *,int *) ;
 int serf_bucket_type_aggregate ;

serf_bucket_t *serf_bucket_aggregate_create(
    serf_bucket_alloc_t *allocator)
{
    aggregate_context_t *ctx;

    ctx = create_aggregate(allocator);

    return serf_bucket_create(&serf_bucket_type_aggregate, allocator, ctx);
}
