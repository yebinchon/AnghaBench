
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int jobs; } ;
typedef TYPE_1__ async_pool ;


 scalar_t__ CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,int *) ;
 int OPENSSL_free (TYPE_1__*) ;
 int async_ctx_free () ;
 int async_empty_pool (TYPE_1__*) ;
 int async_local_cleanup () ;
 int poolkey ;
 int sk_ASYNC_JOB_free (int ) ;

void async_delete_thread_state(void)
{
    async_pool *pool = (async_pool *)CRYPTO_THREAD_get_local(&poolkey);

    if (pool != ((void*)0)) {
        async_empty_pool(pool);
        sk_ASYNC_JOB_free(pool->jobs);
        OPENSSL_free(pool);
        CRYPTO_THREAD_set_local(&poolkey, ((void*)0));
    }
    async_local_cleanup();
    async_ctx_free();
}
