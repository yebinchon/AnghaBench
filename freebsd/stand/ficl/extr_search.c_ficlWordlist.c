
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_UNS ;
typedef int FICL_HASH ;
typedef int FICL_DICT ;


 int * dictCreateWordlist (int *,int ) ;
 int stackPopUNS (int ) ;
 int stackPushPtr (int ,int *) ;
 int vmCheckStack (TYPE_1__*,int,int) ;
 int * vmGetDict (TYPE_1__*) ;

__attribute__((used)) static void ficlWordlist(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    FICL_HASH *pHash;
    FICL_UNS nBuckets;




    nBuckets = stackPopUNS(pVM->pStack);
    pHash = dictCreateWordlist(dp, nBuckets);
    stackPushPtr(pVM->pStack, pHash);
    return;
}
