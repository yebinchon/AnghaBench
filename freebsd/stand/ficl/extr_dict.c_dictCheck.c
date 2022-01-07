
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nLists; } ;
typedef int FICL_VM ;
typedef TYPE_1__ FICL_DICT ;
typedef int CELL ;


 scalar_t__ FICL_DEFAULT_VOCS ;
 int dictCellsAvail (TYPE_1__*) ;
 int dictCellsUsed (TYPE_1__*) ;
 int dictResetSearchOrder (TYPE_1__*) ;
 int vmThrowErr (int *,char*) ;

void dictCheck(FICL_DICT *pDict, FICL_VM *pVM, int n)
{
    if ((n >= 0) && (dictCellsAvail(pDict) * (int)sizeof(CELL) < n))
    {
        vmThrowErr(pVM, "Error: dictionary full");
    }

    if ((n <= 0) && (dictCellsUsed(pDict) * (int)sizeof(CELL) < -n))
    {
        vmThrowErr(pVM, "Error: dictionary underflow");
    }

    if (pDict->nLists > FICL_DEFAULT_VOCS)
    {
        dictResetSearchOrder(pDict);
        vmThrowErr(pVM, "Error: search order overflow");
    }
    else if (pDict->nLists < 0)
    {
        dictResetSearchOrder(pDict);
        vmThrowErr(pVM, "Error: search order underflow");
    }

    return;
}
