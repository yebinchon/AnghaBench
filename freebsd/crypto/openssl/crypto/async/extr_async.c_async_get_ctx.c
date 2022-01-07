
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int async_ctx ;


 scalar_t__ CRYPTO_THREAD_get_local (int *) ;
 int ctxkey ;

async_ctx *async_get_ctx(void)
{
    return (async_ctx *)CRYPTO_THREAD_get_local(&ctxkey);
}
