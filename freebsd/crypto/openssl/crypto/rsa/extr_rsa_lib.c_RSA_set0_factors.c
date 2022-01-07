
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * q; int * p; } ;
typedef TYPE_1__ RSA ;
typedef int BIGNUM ;


 int BN_FLG_CONSTTIME ;
 int BN_clear_free (int *) ;
 int BN_set_flags (int *,int ) ;

int RSA_set0_factors(RSA *r, BIGNUM *p, BIGNUM *q)
{



    if ((r->p == ((void*)0) && p == ((void*)0))
        || (r->q == ((void*)0) && q == ((void*)0)))
        return 0;

    if (p != ((void*)0)) {
        BN_clear_free(r->p);
        r->p = p;
        BN_set_flags(r->p, BN_FLG_CONSTTIME);
    }
    if (q != ((void*)0)) {
        BN_clear_free(r->q);
        r->q = q;
        BN_set_flags(r->q, BN_FLG_CONSTTIME);
    }

    return 1;
}
