
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_cleanup_local (int *) ;
 int ctxkey ;
 int poolkey ;

void async_deinit(void)
{
    CRYPTO_THREAD_cleanup_local(&ctxkey);
    CRYPTO_THREAD_cleanup_local(&poolkey);
}
