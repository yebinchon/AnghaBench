
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRYPTO_RWLOCK ;


 int OPENSSL_free (int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_rwlock_destroy (int *) ;

void CRYPTO_THREAD_lock_free(CRYPTO_RWLOCK *lock)
{
    if (lock == ((void*)0))
        return;




    pthread_mutex_destroy(lock);

    OPENSSL_free(lock);

    return;
}
