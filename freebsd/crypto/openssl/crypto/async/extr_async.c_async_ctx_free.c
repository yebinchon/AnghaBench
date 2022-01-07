
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int async_ctx ;


 int CRYPTO_THREAD_set_local (int *,int *) ;
 int OPENSSL_free (int *) ;
 int * async_get_ctx () ;
 int ctxkey ;

__attribute__((used)) static int async_ctx_free(void)
{
    async_ctx *ctx;

    ctx = async_get_ctx();

    if (!CRYPTO_THREAD_set_local(&ctxkey, ((void*)0)))
        return 0;

    OPENSSL_free(ctx);

    return 1;
}
