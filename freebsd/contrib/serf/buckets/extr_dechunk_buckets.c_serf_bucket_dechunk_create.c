
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_4__ {int linebuf; int state; int * stream; } ;
typedef TYPE_1__ dechunk_context_t ;


 int STATE_SIZE ;
 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;
 int serf_bucket_type_dechunk ;
 int serf_linebuf_init (int *) ;

serf_bucket_t *serf_bucket_dechunk_create(
    serf_bucket_t *stream,
    serf_bucket_alloc_t *allocator)
{
    dechunk_context_t *ctx;

    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));
    ctx->stream = stream;
    ctx->state = STATE_SIZE;

    serf_linebuf_init(&ctx->linebuf);

    return serf_bucket_create(&serf_bucket_type_dechunk, allocator, ctx);
}
