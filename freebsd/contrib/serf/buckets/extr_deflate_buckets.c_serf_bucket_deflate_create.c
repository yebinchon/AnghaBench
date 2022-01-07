
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_4__ {int format; int bufferSize; int memLevel; int windowSize; int stream_size; int stream_left; int state; int zstream; scalar_t__ crc; int inflate_stream; int stream_status; int * stream; } ;
typedef TYPE_1__ deflate_context_t ;


 int APR_SUCCESS ;
 int DEFLATE_BUFFER_SIZE ;
 int DEFLATE_MAGIC_SIZE ;
 int DEFLATE_MEMLEVEL ;
 int DEFLATE_WINDOW_SIZE ;


 int STATE_INIT ;
 int STATE_READING_HEADER ;
 int memset (int *,int ,int) ;
 int serf_bucket_aggregate_create (int *) ;
 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;
 int serf_bucket_type_deflate ;

serf_bucket_t *serf_bucket_deflate_create(
    serf_bucket_t *stream,
    serf_bucket_alloc_t *allocator,
    int format)
{
    deflate_context_t *ctx;

    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));
    ctx->stream = stream;
    ctx->stream_status = APR_SUCCESS;
    ctx->inflate_stream = serf_bucket_aggregate_create(allocator);
    ctx->format = format;
    ctx->crc = 0;

    memset(&ctx->zstream, 0, sizeof(ctx->zstream));

    switch (ctx->format) {
        case 128:
            ctx->state = STATE_READING_HEADER;
            break;
        case 129:

            ctx->state = STATE_INIT;
            break;
        default:

            return ((void*)0);
    }


    ctx->stream_left = ctx->stream_size = DEFLATE_MAGIC_SIZE;

    ctx->windowSize = DEFLATE_WINDOW_SIZE;
    ctx->memLevel = DEFLATE_MEMLEVEL;
    ctx->bufferSize = DEFLATE_BUFFER_SIZE;

    return serf_bucket_create(&serf_bucket_type_deflate, allocator, ctx);
}
