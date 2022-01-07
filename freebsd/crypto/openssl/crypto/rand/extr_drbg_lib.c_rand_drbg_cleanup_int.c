
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_cleanup_local (int *) ;
 int RAND_DRBG_free (int *) ;
 int * master_drbg ;
 int private_drbg ;
 int public_drbg ;

void rand_drbg_cleanup_int(void)
{
    if (master_drbg != ((void*)0)) {
        RAND_DRBG_free(master_drbg);
        master_drbg = ((void*)0);

        CRYPTO_THREAD_cleanup_local(&private_drbg);
        CRYPTO_THREAD_cleanup_local(&public_drbg);
    }
}
