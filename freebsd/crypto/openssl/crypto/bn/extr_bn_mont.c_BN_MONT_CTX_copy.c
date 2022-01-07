
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * n0; int ri; int Ni; int N; int RR; } ;
typedef TYPE_1__ BN_MONT_CTX ;


 int BN_copy (int *,int *) ;

BN_MONT_CTX *BN_MONT_CTX_copy(BN_MONT_CTX *to, BN_MONT_CTX *from)
{
    if (to == from)
        return to;

    if (!BN_copy(&(to->RR), &(from->RR)))
        return ((void*)0);
    if (!BN_copy(&(to->N), &(from->N)))
        return ((void*)0);
    if (!BN_copy(&(to->Ni), &(from->Ni)))
        return ((void*)0);
    to->ri = from->ri;
    to->n0[0] = from->n0[0];
    to->n0[1] = from->n0[1];
    return to;
}
