
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p; } ;
typedef TYPE_1__ DH ;


 int BN_num_bits (int ) ;

int DH_bits(const DH *dh)
{
    return BN_num_bits(dh->p);
}
