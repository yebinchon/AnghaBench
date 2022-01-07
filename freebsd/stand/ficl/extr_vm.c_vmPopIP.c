
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rStack; scalar_t__ ip; } ;
typedef scalar_t__ IPTYPE ;
typedef TYPE_1__ FICL_VM ;


 scalar_t__ stackPopPtr (int ) ;

void vmPopIP(FICL_VM *pVM)
{
    pVM->ip = (IPTYPE)(stackPopPtr(pVM->rStack));
    return;
}
