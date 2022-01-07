
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* cleanup ) () ;} ;
typedef TYPE_1__ RAND_METHOD ;


 int CRYPTO_THREAD_lock_free (int *) ;
 int RAND_set_rand_method (int *) ;
 TYPE_1__* default_RAND_meth ;
 int * rand_engine_lock ;
 scalar_t__ rand_inited ;
 int * rand_meth_lock ;
 int * rand_nonce_lock ;
 int rand_pool_cleanup () ;
 int stub1 () ;

void rand_cleanup_int(void)
{
    const RAND_METHOD *meth = default_RAND_meth;

    if (!rand_inited)
        return;

    if (meth != ((void*)0) && meth->cleanup != ((void*)0))
        meth->cleanup();
    RAND_set_rand_method(((void*)0));
    rand_pool_cleanup();

    CRYPTO_THREAD_lock_free(rand_engine_lock);
    rand_engine_lock = ((void*)0);

    CRYPTO_THREAD_lock_free(rand_meth_lock);
    rand_meth_lock = ((void*)0);
    CRYPTO_THREAD_lock_free(rand_nonce_lock);
    rand_nonce_lock = ((void*)0);
    rand_inited = 0;
}
