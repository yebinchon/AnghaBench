
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bn; } ;
typedef TYPE_1__ MINT ;


 int BN_cmp (int ,int ) ;

int
mp_mcmp(const MINT *mp1, const MINT *mp2)
{

 return (BN_cmp(mp1->bn, mp2->bn));
}
