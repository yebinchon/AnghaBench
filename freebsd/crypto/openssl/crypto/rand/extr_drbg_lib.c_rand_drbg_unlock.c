
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lock; } ;
typedef TYPE_1__ RAND_DRBG ;


 int CRYPTO_THREAD_unlock (int *) ;

int rand_drbg_unlock(RAND_DRBG *drbg)
{
    if (drbg->lock != ((void*)0))
        return CRYPTO_THREAD_unlock(drbg->lock);

    return 1;
}
