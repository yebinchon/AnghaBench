
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_4__ {int channel; int linebuf; int * phrase; scalar_t__ length; int state; int headers; int * body; int * stream; } ;
typedef TYPE_1__ incoming_context_t ;


 int STATE_STATUS_LINE ;
 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 int serf_bucket_headers_create (int *) ;
 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;
 int serf_bucket_type_bwtp_incoming_frame ;
 int serf_linebuf_init (int *) ;

serf_bucket_t *serf_bucket_bwtp_incoming_frame_create(
    serf_bucket_t *stream,
    serf_bucket_alloc_t *allocator)
{
    incoming_context_t *ctx;

    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));
    ctx->stream = stream;
    ctx->body = ((void*)0);
    ctx->headers = serf_bucket_headers_create(allocator);
    ctx->state = STATE_STATUS_LINE;
    ctx->length = 0;
    ctx->channel = -1;
    ctx->phrase = ((void*)0);

    serf_linebuf_init(&ctx->linebuf);

    return serf_bucket_create(&serf_bucket_type_bwtp_incoming_frame, allocator, ctx);
}
