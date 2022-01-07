
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_4__ {int type; int channel; char* phrase; int headers; scalar_t__ open; } ;
typedef TYPE_1__ frame_context_t ;


 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 int serf_bucket_headers_create (int *) ;
 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;
 int serf_bucket_type_bwtp_frame ;

serf_bucket_t *serf_bucket_bwtp_message_create(
    int channel,
    serf_bucket_t *body,
    serf_bucket_alloc_t *allocator)
{
    frame_context_t *ctx;

    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));
    ctx->type = 1;
    ctx->open = 0;
    ctx->channel = channel;
    ctx->phrase = "MESSAGE";
    ctx->headers = serf_bucket_headers_create(allocator);

    return serf_bucket_create(&serf_bucket_type_bwtp_frame, allocator, ctx);
}
