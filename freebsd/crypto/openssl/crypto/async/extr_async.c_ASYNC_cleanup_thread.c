
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_INIT_ASYNC ;
 int OPENSSL_init_crypto (int ,int *) ;
 int async_delete_thread_state () ;

void ASYNC_cleanup_thread(void)
{
    if (!OPENSSL_init_crypto(OPENSSL_INIT_ASYNC, ((void*)0)))
        return;

    async_delete_thread_state();
}
