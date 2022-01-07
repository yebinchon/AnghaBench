
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int size; TYPE_2__* head; } ;
struct TYPE_11__ {int size; } ;
struct TYPE_10__ {TYPE_6__ pool; TYPE_5__ stack; } ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_1__* vals; } ;
struct TYPE_8__ {int dmax; } ;
typedef TYPE_2__ BN_POOL_ITEM ;
typedef TYPE_3__ BN_CTX ;


 unsigned int BN_CTX_POOL_SIZE ;
 int BN_POOL_finish (TYPE_6__*) ;
 int BN_STACK_finish (TYPE_5__*) ;
 int OPENSSL_free (TYPE_3__*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

void BN_CTX_free(BN_CTX *ctx)
{
    if (ctx == ((void*)0))
        return;
    BN_STACK_finish(&ctx->stack);
    BN_POOL_finish(&ctx->pool);
    OPENSSL_free(ctx);
}
