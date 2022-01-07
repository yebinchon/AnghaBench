
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRYPTO_RWLOCK ;


 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_rwlock_rdlock (int *) ;

int CRYPTO_THREAD_read_lock(CRYPTO_RWLOCK *lock)
{




    if (pthread_mutex_lock(lock) != 0)
        return 0;


    return 1;
}
