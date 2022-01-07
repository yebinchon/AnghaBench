
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_METHOD ;
typedef int RAND_DRBG ;


 int RAND_DRBG_bytes (int *,unsigned char*,int) ;
 int * RAND_DRBG_get0_private () ;
 int const* RAND_OpenSSL () ;
 int RAND_bytes (unsigned char*,int) ;
 int * RAND_get_rand_method () ;

int RAND_priv_bytes(unsigned char *buf, int num)
{
    const RAND_METHOD *meth = RAND_get_rand_method();
    RAND_DRBG *drbg;
    int ret;

    if (meth != RAND_OpenSSL())
        return RAND_bytes(buf, num);

    drbg = RAND_DRBG_get0_private();
    if (drbg == ((void*)0))
        return 0;

    ret = RAND_DRBG_bytes(drbg, buf, num);
    return ret;
}
