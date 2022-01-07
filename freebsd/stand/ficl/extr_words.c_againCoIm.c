
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pSys; } ;
struct TYPE_6__ {int pBranchParen; } ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_DICT ;


 int LVALUEtoCELL (int ) ;
 int assert (int ) ;
 int destTag ;
 int dictAppendCell (int *,int ) ;
 int resolveBackBranch (int *,TYPE_2__*,int ) ;
 int * vmGetDict (TYPE_2__*) ;

__attribute__((used)) static void againCoIm(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);

    assert(pVM->pSys->pBranchParen);
    dictAppendCell(dp, LVALUEtoCELL(pVM->pSys->pBranchParen));


    resolveBackBranch(dp, pVM, destTag);
    return;
}
