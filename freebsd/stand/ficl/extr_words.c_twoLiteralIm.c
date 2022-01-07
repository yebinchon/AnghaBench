
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pStack; TYPE_1__* pSys; } ;
struct TYPE_5__ {int pTwoLitParen; } ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_DICT ;


 int LVALUEtoCELL (int ) ;
 int assert (int ) ;
 int dictAppendCell (int *,int ) ;
 int stackPop (int ) ;
 int * vmGetDict (TYPE_2__*) ;

__attribute__((used)) static void twoLiteralIm(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    assert(pVM->pSys->pTwoLitParen);

    dictAppendCell(dp, LVALUEtoCELL(pVM->pSys->pTwoLitParen));
    dictAppendCell(dp, stackPop(pVM->pStack));
    dictAppendCell(dp, stackPop(pVM->pStack));

    return;
}
