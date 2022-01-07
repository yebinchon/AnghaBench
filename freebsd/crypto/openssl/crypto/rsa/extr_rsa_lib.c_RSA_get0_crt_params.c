
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * iqmp; int * dmq1; int * dmp1; } ;
typedef TYPE_1__ RSA ;
typedef int BIGNUM ;



void RSA_get0_crt_params(const RSA *r,
                         const BIGNUM **dmp1, const BIGNUM **dmq1,
                         const BIGNUM **iqmp)
{
    if (dmp1 != ((void*)0))
        *dmp1 = r->dmp1;
    if (dmq1 != ((void*)0))
        *dmq1 = r->dmq1;
    if (iqmp != ((void*)0))
        *iqmp = r->iqmp;
}
