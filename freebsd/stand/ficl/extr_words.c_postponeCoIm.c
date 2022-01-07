
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * p; } ;
struct TYPE_7__ {int pStack; int pSys; } ;
typedef int FICL_WORD ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_DICT ;


 int LVALUEtoCELL (int *) ;
 int assert (int *) ;
 int dictAppendCell (int *,int ) ;
 int * ficlLookup (int ,char*) ;
 int ficlTick (TYPE_1__*) ;
 int literalIm (TYPE_1__*) ;
 TYPE_3__ stackGetTop (int ) ;
 int stackPop (int ) ;
 int * vmGetDict (TYPE_1__*) ;
 scalar_t__ wordIsImmediate (int *) ;

__attribute__((used)) static void postponeCoIm(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    FICL_WORD *pFW;
    FICL_WORD *pComma = ficlLookup(pVM->pSys, ",");
    assert(pComma);

    ficlTick(pVM);
    pFW = stackGetTop(pVM->pStack).p;
    if (wordIsImmediate(pFW))
    {
        dictAppendCell(dp, stackPop(pVM->pStack));
    }
    else
    {
        literalIm(pVM);
        dictAppendCell(dp, LVALUEtoCELL(pComma));
    }

    return;
}
