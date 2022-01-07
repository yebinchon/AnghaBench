
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * pCompile; } ;
struct TYPE_6__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_HASH ;
typedef TYPE_2__ FICL_DICT ;


 int FALSE ;
 int TRUE ;
 int ficlLockDictionary (int ) ;
 int * stackPopPtr (int ) ;
 TYPE_2__* vmGetDict (TYPE_1__*) ;

__attribute__((used)) static void setCurrent(FICL_VM *pVM)
{
    FICL_HASH *pHash = stackPopPtr(pVM->pStack);
    FICL_DICT *pDict = vmGetDict(pVM);
    ficlLockDictionary(TRUE);
    pDict->pCompile = pHash;
    ficlLockDictionary(FALSE);
    return;
}
