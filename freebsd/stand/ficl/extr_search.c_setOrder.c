
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nLists; int * pSearch; } ;
struct TYPE_8__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_DICT ;


 int FALSE ;
 int FICL_DEFAULT_VOCS ;
 int TRUE ;
 int dictResetSearchOrder (TYPE_2__*) ;
 int ficlLockDictionary (int ) ;
 int stackPopINT (int ) ;
 int stackPopPtr (int ) ;
 TYPE_2__* vmGetDict (TYPE_1__*) ;
 int vmThrowErr (TYPE_1__*,char*) ;

__attribute__((used)) static void setOrder(FICL_VM *pVM)
{
    int i;
    int nLists = stackPopINT(pVM->pStack);
    FICL_DICT *dp = vmGetDict(pVM);

    if (nLists > FICL_DEFAULT_VOCS)
    {
        vmThrowErr(pVM, "set-order error: list would be too large");
    }

    ficlLockDictionary(TRUE);

    if (nLists >= 0)
    {
        dp->nLists = nLists;
        for (i = nLists-1; i >= 0; --i)
        {
            dp->pSearch[i] = stackPopPtr(pVM->pStack);
        }
    }
    else
    {
        dictResetSearchOrder(dp);
    }

    ficlLockDictionary(FALSE);
    return;
}
