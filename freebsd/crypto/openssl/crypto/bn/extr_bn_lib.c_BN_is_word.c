
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int neg; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 scalar_t__ BN_abs_is_word (TYPE_1__ const*,int const) ;

int BN_is_word(const BIGNUM *a, const BN_ULONG w)
{
    return BN_abs_is_word(a, w) && (!w || !a->neg);
}
