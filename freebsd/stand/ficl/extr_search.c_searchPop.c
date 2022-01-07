
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nLists; int * pSearch; } ;
struct TYPE_7__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_DICT ;


 int FALSE ;
 int TRUE ;
 int ficlLockDictionary (int ) ;
 int stackPushPtr (int ,int ) ;
 TYPE_2__* vmGetDict (TYPE_1__*) ;
 int vmThrowErr (TYPE_1__*,char*) ;

__attribute__((used)) static void searchPop(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    int nLists;

    ficlLockDictionary(TRUE);
    nLists = dp->nLists;
    if (nLists == 0)
    {
        vmThrowErr(pVM, "search> error: empty search order");
    }
    stackPushPtr(pVM->pStack, dp->pSearch[--dp->nLists]);
    ficlLockDictionary(FALSE);
    return;
}
