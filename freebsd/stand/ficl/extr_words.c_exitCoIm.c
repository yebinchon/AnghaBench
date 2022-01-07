
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pSys; } ;
struct TYPE_6__ {scalar_t__ nLocals; int pExitParen; int pUnLinkParen; } ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_DICT ;


 int IGNORE (TYPE_2__*) ;
 int LVALUEtoCELL (int ) ;
 int assert (int ) ;
 int dictAppendCell (int *,int ) ;
 int * vmGetDict (TYPE_2__*) ;

__attribute__((used)) static void exitCoIm(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    assert(pVM->pSys->pExitParen);
    IGNORE(pVM);







    dictAppendCell(dp, LVALUEtoCELL(pVM->pSys->pExitParen));
    return;
}
