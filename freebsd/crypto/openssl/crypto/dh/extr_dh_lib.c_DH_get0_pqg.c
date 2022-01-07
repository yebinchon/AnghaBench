
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * g; int * q; int * p; } ;
typedef TYPE_1__ DH ;
typedef int BIGNUM ;



void DH_get0_pqg(const DH *dh,
                 const BIGNUM **p, const BIGNUM **q, const BIGNUM **g)
{
    if (p != ((void*)0))
        *p = dh->p;
    if (q != ((void*)0))
        *q = dh->q;
    if (g != ((void*)0))
        *g = dh->g;
}
