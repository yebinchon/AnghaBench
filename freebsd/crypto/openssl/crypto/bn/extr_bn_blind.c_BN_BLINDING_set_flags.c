
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long flags; } ;
typedef TYPE_1__ BN_BLINDING ;



void BN_BLINDING_set_flags(BN_BLINDING *b, unsigned long flags)
{
    b->flags = flags;
}
