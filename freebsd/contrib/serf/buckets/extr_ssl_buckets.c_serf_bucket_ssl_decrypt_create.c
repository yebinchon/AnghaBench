
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* ssl_ctx; TYPE_4__** our_stream; int * databuf; } ;
typedef TYPE_3__ ssl_context_t ;
typedef int serf_ssl_context_t ;
struct TYPE_11__ {TYPE_3__* data; } ;
typedef TYPE_4__ serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_8__ {TYPE_4__* stream; int databuf; } ;
struct TYPE_9__ {TYPE_1__ decrypt; } ;


 TYPE_4__* serf_bucket_ssl_create (int *,int *,int *) ;
 int serf_bucket_type_ssl_decrypt ;

serf_bucket_t *serf_bucket_ssl_decrypt_create(
    serf_bucket_t *stream,
    serf_ssl_context_t *ssl_ctx,
    serf_bucket_alloc_t *allocator)
{
    serf_bucket_t *bkt;
    ssl_context_t *ctx;

    bkt = serf_bucket_ssl_create(ssl_ctx, allocator,
                                 &serf_bucket_type_ssl_decrypt);

    ctx = bkt->data;

    ctx->databuf = &ctx->ssl_ctx->decrypt.databuf;
    if (ctx->ssl_ctx->decrypt.stream != ((void*)0)) {
        return ((void*)0);
    }
    ctx->ssl_ctx->decrypt.stream = stream;
    ctx->our_stream = &ctx->ssl_ctx->decrypt.stream;

    return bkt;
}
