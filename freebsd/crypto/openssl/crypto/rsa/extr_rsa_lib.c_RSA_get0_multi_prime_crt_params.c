
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int prime_infos; } ;
struct TYPE_6__ {int * t; int * d; } ;
typedef TYPE_1__ RSA_PRIME_INFO ;
typedef TYPE_2__ RSA ;
typedef int BIGNUM ;


 int RSA_get_multi_prime_extra_count (TYPE_2__ const*) ;
 TYPE_1__* sk_RSA_PRIME_INFO_value (int ,int) ;

int RSA_get0_multi_prime_crt_params(const RSA *r, const BIGNUM *exps[],
                                    const BIGNUM *coeffs[])
{
    int pnum;

    if ((pnum = RSA_get_multi_prime_extra_count(r)) == 0)
        return 0;


    if (exps != ((void*)0) || coeffs != ((void*)0)) {
        RSA_PRIME_INFO *pinfo;
        int i;


        for (i = 0; i < pnum; i++) {
            pinfo = sk_RSA_PRIME_INFO_value(r->prime_infos, i);
            if (exps != ((void*)0))
                exps[i] = pinfo->d;
            if (coeffs != ((void*)0))
                coeffs[i] = pinfo->t;
        }
    }

    return 1;
}
