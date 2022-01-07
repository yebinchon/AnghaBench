
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bn_limit_bits ;
 int bn_limit_bits_high ;
 int bn_limit_bits_low ;
 int bn_limit_bits_mont ;

int BN_get_params(int which)
{
    if (which == 0)
        return bn_limit_bits;
    else if (which == 1)
        return bn_limit_bits_high;
    else if (which == 2)
        return bn_limit_bits_low;
    else if (which == 3)
        return bn_limit_bits_mont;
    else
        return 0;
}
