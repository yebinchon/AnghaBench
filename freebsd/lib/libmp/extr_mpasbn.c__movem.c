
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bn; } ;
typedef TYPE_1__ MINT ;


 int BN_ERRCHECK (char const*,int ) ;
 int BN_copy (int ,int ) ;

__attribute__((used)) static void
_movem(const char *msg, const MINT *smp, MINT *tmp)
{

 BN_ERRCHECK(msg, BN_copy(tmp->bn, smp->bn));
}
