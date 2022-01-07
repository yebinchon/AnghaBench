
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * s; int * r; } ;
typedef TYPE_1__ ECDSA_SIG ;
typedef int BIGNUM ;



void ECDSA_SIG_get0(const ECDSA_SIG *sig, const BIGNUM **pr, const BIGNUM **ps)
{
    if (pr != ((void*)0))
        *pr = sig->r;
    if (ps != ((void*)0))
        *ps = sig->s;
}
