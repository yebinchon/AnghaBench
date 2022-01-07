
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* ssl_ctx; } ;
typedef TYPE_1__ ssl_context_t ;
struct TYPE_7__ {TYPE_1__* data; } ;
typedef TYPE_2__ serf_bucket_t ;
struct TYPE_8__ {int refcount; } ;


 int serf_default_destroy_and_data (TYPE_2__*) ;
 int ssl_free_context (TYPE_3__*) ;

__attribute__((used)) static void serf_ssl_destroy_and_data(serf_bucket_t *bucket)
{
    ssl_context_t *ctx = bucket->data;

    if (!--ctx->ssl_ctx->refcount) {
        ssl_free_context(ctx->ssl_ctx);
    }

    serf_default_destroy_and_data(bucket);
}
