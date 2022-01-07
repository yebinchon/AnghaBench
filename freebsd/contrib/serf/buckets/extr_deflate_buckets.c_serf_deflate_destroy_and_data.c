
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_6__ {scalar_t__ state; scalar_t__ stream; scalar_t__ inflate_stream; int zstream; } ;
typedef TYPE_2__ deflate_context_t ;


 scalar_t__ STATE_FINISH ;
 scalar_t__ STATE_INIT ;
 int inflateEnd (int *) ;
 int serf_bucket_destroy (scalar_t__) ;
 int serf_default_destroy_and_data (TYPE_1__*) ;

__attribute__((used)) static void serf_deflate_destroy_and_data(serf_bucket_t *bucket)
{
    deflate_context_t *ctx = bucket->data;

    if (ctx->state > STATE_INIT &&
        ctx->state <= STATE_FINISH)
        inflateEnd(&ctx->zstream);




    if (ctx->inflate_stream) {
        serf_bucket_destroy(ctx->inflate_stream);
    }
    serf_bucket_destroy(ctx->stream);

    serf_default_destroy_and_data(bucket);
}
