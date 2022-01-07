
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;


 int * CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,int *) ;
 int RAND_DRBG_free (int *) ;
 int private_drbg ;
 int public_drbg ;

void drbg_delete_thread_state(void)
{
    RAND_DRBG *drbg;

    drbg = CRYPTO_THREAD_get_local(&public_drbg);
    CRYPTO_THREAD_set_local(&public_drbg, ((void*)0));
    RAND_DRBG_free(drbg);

    drbg = CRYPTO_THREAD_get_local(&private_drbg);
    CRYPTO_THREAD_set_local(&private_drbg, ((void*)0));
    RAND_DRBG_free(drbg);
}
