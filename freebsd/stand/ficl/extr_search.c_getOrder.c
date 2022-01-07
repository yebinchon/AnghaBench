
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nLists; int * pSearch; } ;
struct TYPE_6__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_DICT ;


 int FALSE ;
 int TRUE ;
 int ficlLockDictionary (int ) ;
 int stackPushPtr (int ,int ) ;
 int stackPushUNS (int ,int) ;
 TYPE_2__* vmGetDict (TYPE_1__*) ;

__attribute__((used)) static void getOrder(FICL_VM *pVM)
{
    FICL_DICT *pDict = vmGetDict(pVM);
    int nLists = pDict->nLists;
    int i;

    ficlLockDictionary(TRUE);
    for (i = 0; i < nLists; i++)
    {
        stackPushPtr(pVM->pStack, pDict->pSearch[i]);
    }

    stackPushUNS(pVM->pStack, nLists);
    ficlLockDictionary(FALSE);
    return;
}
