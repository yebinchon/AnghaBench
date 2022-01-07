
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;


 int * CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,int *) ;
 int OPENSSL_INIT_THREAD_RAND ;
 int RUN_ONCE (int *,int ) ;
 int do_rand_drbg_init ;
 int * drbg_setup (int ) ;
 int master_drbg ;
 int ossl_init_thread_start (int ) ;
 int public_drbg ;
 int rand_drbg_init ;

RAND_DRBG *RAND_DRBG_get0_public(void)
{
    RAND_DRBG *drbg;

    if (!RUN_ONCE(&rand_drbg_init, do_rand_drbg_init))
        return ((void*)0);

    drbg = CRYPTO_THREAD_get_local(&public_drbg);
    if (drbg == ((void*)0)) {
        if (!ossl_init_thread_start(OPENSSL_INIT_THREAD_RAND))
            return ((void*)0);
        drbg = drbg_setup(master_drbg);
        CRYPTO_THREAD_set_local(&public_drbg, drbg);
    }
    return drbg;
}
