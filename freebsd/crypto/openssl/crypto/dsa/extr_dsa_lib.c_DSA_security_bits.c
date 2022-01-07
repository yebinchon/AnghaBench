
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ q; scalar_t__ p; } ;
typedef TYPE_1__ DSA ;


 int BN_num_bits (scalar_t__) ;
 int BN_security_bits (int ,int ) ;

int DSA_security_bits(const DSA *d)
{
    if (d->p && d->q)
        return BN_security_bits(BN_num_bits(d->p), BN_num_bits(d->q));
    return -1;
}
