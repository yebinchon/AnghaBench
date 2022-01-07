
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * d; int * e; int * n; } ;
typedef TYPE_1__ RSA ;
typedef int BIGNUM ;


 int BN_FLG_CONSTTIME ;
 int BN_clear_free (int *) ;
 int BN_free (int *) ;
 int BN_set_flags (int *,int ) ;

int RSA_set0_key(RSA *r, BIGNUM *n, BIGNUM *e, BIGNUM *d)
{




    if ((r->n == ((void*)0) && n == ((void*)0))
        || (r->e == ((void*)0) && e == ((void*)0)))
        return 0;

    if (n != ((void*)0)) {
        BN_free(r->n);
        r->n = n;
    }
    if (e != ((void*)0)) {
        BN_free(r->e);
        r->e = e;
    }
    if (d != ((void*)0)) {
        BN_clear_free(r->d);
        r->d = d;
        BN_set_flags(r->d, BN_FLG_CONSTTIME);
    }

    return 1;
}
