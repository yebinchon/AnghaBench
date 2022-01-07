
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ip; int rStack; } ;
typedef scalar_t__ IPTYPE ;
typedef TYPE_1__ FICL_VM ;


 int stackPushPtr (int ,void*) ;

void vmPushIP(FICL_VM *pVM, IPTYPE newIP)
{
    stackPushPtr(pVM->rStack, (void *)pVM->ip);
    pVM->ip = newIP;
    return;
}
