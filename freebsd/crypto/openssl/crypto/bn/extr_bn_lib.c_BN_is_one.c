
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int neg; } ;
typedef TYPE_1__ BIGNUM ;


 scalar_t__ BN_abs_is_word (TYPE_1__ const*,int) ;

int BN_is_one(const BIGNUM *a)
{
    return BN_abs_is_word(a, 1) && !a->neg;
}
