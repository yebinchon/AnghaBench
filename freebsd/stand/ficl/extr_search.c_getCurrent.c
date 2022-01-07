
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pCompile; } ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int FALSE ;
 int TRUE ;
 int ficlLockDictionary (int ) ;
 int stackPushPtr (int ,int ) ;
 TYPE_2__* vmGetDict (TYPE_1__*) ;

__attribute__((used)) static void getCurrent(FICL_VM *pVM)
{
    ficlLockDictionary(TRUE);
    stackPushPtr(pVM->pStack, vmGetDict(pVM)->pCompile);
    ficlLockDictionary(FALSE);
    return;
}
