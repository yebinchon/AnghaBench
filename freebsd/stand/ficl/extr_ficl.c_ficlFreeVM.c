
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vmList; } ;
struct TYPE_5__ {struct TYPE_5__* link; TYPE_2__* pSys; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_SYSTEM ;


 int assert (int ) ;
 int vmDelete (TYPE_1__*) ;

void ficlFreeVM(FICL_VM *pVM)
{
    FICL_SYSTEM *pSys = pVM->pSys;
    FICL_VM *pList = pSys->vmList;

    assert(pVM != ((void*)0));

    if (pSys->vmList == pVM)
    {
        pSys->vmList = pSys->vmList->link;
    }
    else for (; pList != ((void*)0); pList = pList->link)
    {
        if (pList->link == pVM)
        {
            pList->link = pVM->link;
            break;
        }
    }

    if (pList)
        vmDelete(pVM);
    return;
}
