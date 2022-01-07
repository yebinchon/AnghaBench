
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nLists; int * pSearch; int pCompile; } ;
typedef int FICL_VM ;
typedef TYPE_1__ FICL_DICT ;


 int assert (TYPE_1__*) ;
 TYPE_1__* vmGetDict (int *) ;
 int vmThrowErr (int *,char*) ;

__attribute__((used)) static void definitions(FICL_VM *pVM)
{
    FICL_DICT *pDict = vmGetDict(pVM);

    assert(pDict);
    if (pDict->nLists < 1)
    {
        vmThrowErr(pVM, "DEFINITIONS error - empty search order");
    }

    pDict->pCompile = pDict->pSearch[pDict->nLists-1];
    return;
}
