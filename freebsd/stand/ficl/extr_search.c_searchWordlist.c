
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UNS16 ;
struct TYPE_7__ {int pStack; } ;
struct TYPE_6__ {void* cp; scalar_t__ count; } ;
typedef TYPE_1__ STRINGINFO ;
typedef int FICL_WORD ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_HASH ;
typedef scalar_t__ FICL_COUNT ;


 int FALSE ;
 int TRUE ;
 int ficlLockDictionary (int ) ;
 int hashHashCode (TYPE_1__) ;
 int * hashLookup (int *,TYPE_1__,int ) ;
 void* stackPopPtr (int ) ;
 scalar_t__ stackPopUNS (int ) ;
 int stackPushINT (int ,int) ;
 int stackPushPtr (int ,int *) ;
 int stackPushUNS (int ,int ) ;
 scalar_t__ wordIsImmediate (int *) ;

__attribute__((used)) static void searchWordlist(FICL_VM *pVM)
{
    STRINGINFO si;
    UNS16 hashCode;
    FICL_WORD *pFW;
    FICL_HASH *pHash = stackPopPtr(pVM->pStack);

    si.count = (FICL_COUNT)stackPopUNS(pVM->pStack);
    si.cp = stackPopPtr(pVM->pStack);
    hashCode = hashHashCode(si);

    ficlLockDictionary(TRUE);
    pFW = hashLookup(pHash, si, hashCode);
    ficlLockDictionary(FALSE);

    if (pFW)
    {
        stackPushPtr(pVM->pStack, pFW);
        stackPushINT(pVM->pStack, (wordIsImmediate(pFW) ? 1 : -1));
    }
    else
    {
        stackPushUNS(pVM->pStack, 0);
    }

    return;
}
