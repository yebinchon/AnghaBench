
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int serf_bucket_aggregate_eof_t ;
struct TYPE_7__ {scalar_t__ bucket_owner; } ;
typedef TYPE_2__ aggregate_context_t ;


 TYPE_1__* serf_bucket_aggregate_create (int *) ;
 int serf_bucket_aggregate_hold_open (TYPE_1__*,int ,void*) ;

serf_bucket_t *serf__bucket_stream_create(
    serf_bucket_alloc_t *allocator,
    serf_bucket_aggregate_eof_t fn,
    void *baton)
{
    serf_bucket_t *bucket = serf_bucket_aggregate_create(allocator);
    aggregate_context_t *ctx = bucket->data;

    serf_bucket_aggregate_hold_open(bucket, fn, baton);

    ctx->bucket_owner = 0;

    return bucket;
}
