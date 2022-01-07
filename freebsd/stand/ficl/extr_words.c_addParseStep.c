
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ p; } ;
struct TYPE_6__ {int pSys; int pStack; } ;
typedef int FICL_WORD ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_DICT ;


 int ficlAddParseStep (int ,int *) ;
 scalar_t__ isAFiclWord (int *,int *) ;
 TYPE_4__ stackPop (int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;
 int * vmGetDict (TYPE_1__*) ;

__attribute__((used)) static void addParseStep(FICL_VM *pVM)
{
    FICL_WORD *pStep;
    FICL_DICT *pd = vmGetDict(pVM);



    pStep = (FICL_WORD *)(stackPop(pVM->pStack).p);
    if ((pStep != ((void*)0)) && isAFiclWord(pd, pStep))
        ficlAddParseStep(pVM->pSys, pStep);
    return;
}
