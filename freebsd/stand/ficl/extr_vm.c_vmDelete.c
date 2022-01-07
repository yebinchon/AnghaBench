
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* fStack; struct TYPE_4__* rStack; struct TYPE_4__* pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int ficlFree (TYPE_1__*) ;

void vmDelete (FICL_VM *pVM)
{
    if (pVM)
    {
        ficlFree(pVM->pStack);
        ficlFree(pVM->rStack);



        ficlFree(pVM);
    }

    return;
}
