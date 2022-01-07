
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int top; int flags; int * d; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_BITS2 ;
 int BN_FLG_CONSTTIME ;
 scalar_t__ BN_is_zero (TYPE_1__ const*) ;
 int BN_num_bits_word (int ) ;
 int bn_check_top (TYPE_1__ const*) ;
 int bn_num_bits_consttime (TYPE_1__ const*) ;

int BN_num_bits(const BIGNUM *a)
{
    int i = a->top - 1;
    bn_check_top(a);

    if (a->flags & BN_FLG_CONSTTIME) {
        return bn_num_bits_consttime(a);
    }

    if (BN_is_zero(a))
        return 0;

    return ((i * BN_BITS2) + BN_num_bits_word(a->d[i]));
}
