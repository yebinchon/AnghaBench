
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blocked; int * currjob; } ;
typedef TYPE_1__ async_ctx ;


 int OPENSSL_INIT_ASYNC ;
 int OPENSSL_init_crypto (int ,int *) ;
 TYPE_1__* async_get_ctx () ;

void ASYNC_block_pause(void)
{
    async_ctx *ctx;

    if (!OPENSSL_init_crypto(OPENSSL_INIT_ASYNC, ((void*)0)))
        return;

    ctx = async_get_ctx();
    if (ctx == ((void*)0) || ctx->currjob == ((void*)0)) {



        return;
    }
    ctx->blocked++;
}
