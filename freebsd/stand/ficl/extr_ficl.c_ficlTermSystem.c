
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* vmList; int * localp; int * envp; int * dp; } ;
struct TYPE_6__ {struct TYPE_6__* link; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_SYSTEM ;


 int dictDelete (int *) ;
 int ficlFree (TYPE_2__*) ;
 int vmDelete (TYPE_1__*) ;

void ficlTermSystem(FICL_SYSTEM *pSys)
{
    if (pSys->dp)
        dictDelete(pSys->dp);
    pSys->dp = ((void*)0);

    if (pSys->envp)
        dictDelete(pSys->envp);
    pSys->envp = ((void*)0);







    while (pSys->vmList != ((void*)0))
    {
        FICL_VM *pVM = pSys->vmList;
        pSys->vmList = pSys->vmList->link;
        vmDelete(pVM);
    }

    ficlFree(pSys);
    pSys = ((void*)0);
    return;
}
