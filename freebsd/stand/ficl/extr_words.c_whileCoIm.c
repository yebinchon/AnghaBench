
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pSys; } ;
struct TYPE_7__ {int pBranch0; } ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_DICT ;


 int LVALUEtoCELL (int ) ;
 int assert (int ) ;
 int dictAppendCell (int *,int ) ;
 int dictAppendUNS (int *,int) ;
 int markBranch (int *,TYPE_2__*,int ) ;
 int origTag ;
 int twoSwap (TYPE_2__*) ;
 int * vmGetDict (TYPE_2__*) ;

__attribute__((used)) static void whileCoIm(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);

    assert(pVM->pSys->pBranch0);

    dictAppendCell(dp, LVALUEtoCELL(pVM->pSys->pBranch0));
    markBranch(dp, pVM, origTag);
    twoSwap(pVM);
    dictAppendUNS(dp, 1);
    return;
}
