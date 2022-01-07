
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* vmList; int textOut; int pExtend; } ;
struct TYPE_7__ {int pExtend; TYPE_2__* pSys; struct TYPE_7__* link; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_SYSTEM ;


 int defaultStack ;
 TYPE_1__* vmCreate (int *,int ,int ) ;
 int vmSetTextOut (TYPE_1__*,int ) ;

FICL_VM *ficlNewVM(FICL_SYSTEM *pSys)
{
    FICL_VM *pVM = vmCreate(((void*)0), defaultStack, defaultStack);
    pVM->link = pSys->vmList;
    pVM->pSys = pSys;
    pVM->pExtend = pSys->pExtend;
    vmSetTextOut(pVM, pSys->textOut);

    pSys->vmList = pVM;
    return pVM;
}
