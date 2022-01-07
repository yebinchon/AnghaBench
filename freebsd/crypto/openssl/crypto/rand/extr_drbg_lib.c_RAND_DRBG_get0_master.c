
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;


 int RUN_ONCE (int *,int ) ;
 int do_rand_drbg_init ;
 int * master_drbg ;
 int rand_drbg_init ;

RAND_DRBG *RAND_DRBG_get0_master(void)
{
    if (!RUN_ONCE(&rand_drbg_init, do_rand_drbg_init))
        return ((void*)0);

    return master_drbg;
}
