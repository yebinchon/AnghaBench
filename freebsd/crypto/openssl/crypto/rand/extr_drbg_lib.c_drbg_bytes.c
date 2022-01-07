
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;


 int RAND_DRBG_bytes (int *,unsigned char*,int) ;
 int * RAND_DRBG_get0_public () ;

__attribute__((used)) static int drbg_bytes(unsigned char *out, int count)
{
    int ret;
    RAND_DRBG *drbg = RAND_DRBG_get0_public();

    if (drbg == ((void*)0))
        return 0;

    ret = RAND_DRBG_bytes(drbg, out, count);

    return ret;
}
