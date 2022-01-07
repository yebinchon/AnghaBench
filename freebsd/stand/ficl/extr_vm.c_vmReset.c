
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base; int fStack; int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int stackReset (int ) ;
 int vmQuit (TYPE_1__*) ;

void vmReset(FICL_VM *pVM)
{
    vmQuit(pVM);
    stackReset(pVM->pStack);



    pVM->base = 10;
    return;
}
