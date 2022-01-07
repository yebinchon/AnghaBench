
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nLists; int * pSearch; } ;
struct TYPE_7__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_DICT ;


 int FALSE ;
 scalar_t__ FICL_DEFAULT_VOCS ;
 int TRUE ;
 int ficlLockDictionary (int ) ;
 int stackPopPtr (int ) ;
 TYPE_2__* vmGetDict (TYPE_1__*) ;
 int vmThrowErr (TYPE_1__*,char*) ;

__attribute__((used)) static void searchPush(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);

    ficlLockDictionary(TRUE);
    if (dp->nLists > FICL_DEFAULT_VOCS)
    {
        vmThrowErr(pVM, ">search error: search order overflow");
    }
    dp->pSearch[dp->nLists++] = stackPopPtr(pVM->pStack);
    ficlLockDictionary(FALSE);
    return;
}
