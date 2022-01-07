
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int original; int baton; int (* freefunc ) (int ,int ) ;} ;
typedef TYPE_1__ simple_context_t ;
struct TYPE_6__ {TYPE_1__* data; } ;
typedef TYPE_2__ serf_bucket_t ;


 int serf_default_destroy_and_data (TYPE_2__*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void serf_simple_destroy(serf_bucket_t *bucket)
{
    simple_context_t *ctx = bucket->data;

    if (ctx->freefunc)
        (*ctx->freefunc)(ctx->baton, ctx->original);

    serf_default_destroy_and_data(bucket);
}
