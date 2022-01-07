
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dmax; int * d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int * bn_expand_internal (TYPE_1__*,int) ;
 int bn_free_d (TYPE_1__*,int) ;

BIGNUM *bn_expand2(BIGNUM *b, int words)
{
    if (words > b->dmax) {
        BN_ULONG *a = bn_expand_internal(b, words);
        if (!a)
            return ((void*)0);
        if (b->d != ((void*)0))
            bn_free_d(b, 1);
        b->d = a;
        b->dmax = words;
    }

    return b;
}
