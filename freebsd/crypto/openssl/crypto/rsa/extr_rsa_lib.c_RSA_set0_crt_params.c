
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * iqmp; int * dmq1; int * dmp1; } ;
typedef TYPE_1__ RSA ;
typedef int BIGNUM ;


 int BN_FLG_CONSTTIME ;
 int BN_clear_free (int *) ;
 int BN_set_flags (int *,int ) ;

int RSA_set0_crt_params(RSA *r, BIGNUM *dmp1, BIGNUM *dmq1, BIGNUM *iqmp)
{



    if ((r->dmp1 == ((void*)0) && dmp1 == ((void*)0))
        || (r->dmq1 == ((void*)0) && dmq1 == ((void*)0))
        || (r->iqmp == ((void*)0) && iqmp == ((void*)0)))
        return 0;

    if (dmp1 != ((void*)0)) {
        BN_clear_free(r->dmp1);
        r->dmp1 = dmp1;
        BN_set_flags(r->dmp1, BN_FLG_CONSTTIME);
    }
    if (dmq1 != ((void*)0)) {
        BN_clear_free(r->dmq1);
        r->dmq1 = dmq1;
        BN_set_flags(r->dmq1, BN_FLG_CONSTTIME);
    }
    if (iqmp != ((void*)0)) {
        BN_clear_free(r->iqmp);
        r->iqmp = iqmp;
        BN_set_flags(r->iqmp, BN_FLG_CONSTTIME);
    }

    return 1;
}
