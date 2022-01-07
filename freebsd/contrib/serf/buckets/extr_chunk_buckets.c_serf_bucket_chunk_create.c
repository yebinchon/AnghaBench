
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_4__ {int * stream; int chunk; int state; } ;
typedef TYPE_1__ chunk_context_t ;


 int STATE_FETCH ;
 int serf_bucket_aggregate_create (int *) ;
 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;
 int serf_bucket_type_chunk ;

serf_bucket_t *serf_bucket_chunk_create(
    serf_bucket_t *stream, serf_bucket_alloc_t *allocator)
{
    chunk_context_t *ctx;

    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));
    ctx->state = STATE_FETCH;
    ctx->chunk = serf_bucket_aggregate_create(allocator);
    ctx->stream = stream;

    return serf_bucket_create(&serf_bucket_type_chunk, allocator, ctx);
}
