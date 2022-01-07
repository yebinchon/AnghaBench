
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ nLocals; int pStore; int pTo2LocalParen; int pToLocalParen; } ;
struct TYPE_11__ {scalar_t__ state; TYPE_8__* pSys; int pStack; } ;
struct TYPE_10__ {scalar_t__ code; int * param; } ;
typedef int STRINGINFO ;
typedef TYPE_1__ FICL_WORD ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_DICT ;


 scalar_t__ COMPILE ;
 scalar_t__ INTERPRET ;
 int LVALUEtoCELL (int ) ;
 int PUSHPTR (int *) ;
 int SI_COUNT (int ) ;
 int SI_PTR (int ) ;
 int assert (int ) ;
 int dictAppendCell (int *,int ) ;
 TYPE_1__* dictLookup (int *,int ) ;
 scalar_t__ do2LocalIm ;
 scalar_t__ doLocalIm ;
 int * ficlGetLoc (TYPE_8__*) ;
 int literalIm (TYPE_2__*) ;
 int stackPop (int ) ;
 int * vmGetDict (TYPE_2__*) ;
 int vmGetWord (TYPE_2__*) ;
 int vmThrowErr (TYPE_2__*,char*,int,int ) ;

__attribute__((used)) static void toValue(FICL_VM *pVM)
{
    STRINGINFO si = vmGetWord(pVM);
    FICL_DICT *dp = vmGetDict(pVM);
    FICL_WORD *pFW;
    assert(pVM->pSys->pStore);

    pFW = dictLookup(dp, si);
    if (!pFW)
    {
        int i = SI_COUNT(si);
        vmThrowErr(pVM, "%.*s not found", i, SI_PTR(si));
    }

    if (pVM->state == INTERPRET)
        pFW->param[0] = stackPop(pVM->pStack);
    else
    {
        PUSHPTR(&pFW->param[0]);
        literalIm(pVM);
        dictAppendCell(dp, LVALUEtoCELL(pVM->pSys->pStore));
    }
    return;
}
