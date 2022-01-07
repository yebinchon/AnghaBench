
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pSys; } ;
struct TYPE_6__ {int pDoParen; } ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_DICT ;


 int LVALUEtoCELL (int ) ;
 int assert (int ) ;
 int dictAppendCell (int *,int ) ;
 int dictAppendUNS (int *,int ) ;
 int doTag ;
 int leaveTag ;
 int markBranch (int *,TYPE_2__*,int ) ;
 int * vmGetDict (TYPE_2__*) ;

__attribute__((used)) static void doCoIm(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);

    assert(pVM->pSys->pDoParen);

    dictAppendCell(dp, LVALUEtoCELL(pVM->pSys->pDoParen));




    markBranch(dp, pVM, leaveTag);
    dictAppendUNS(dp, 0);



    markBranch(dp, pVM, doTag);

    return;
}
