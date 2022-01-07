
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; } ;
typedef int STRINGINFO ;
typedef TYPE_1__ FICL_VM ;


 int SI_SETLEN (int ,int ) ;
 int SI_SETPTR (int ,int ) ;
 int ficlParseWord (TYPE_1__*,int ) ;
 int stackPopPtr (int ) ;
 int stackPopUNS (int ) ;
 int stackPushINT (int ,int ) ;

__attribute__((used)) static void lookup(FICL_VM *pVM)
{
    STRINGINFO si;
    SI_SETLEN(si, stackPopUNS(pVM->pStack));
    SI_SETPTR(si, stackPopPtr(pVM->pStack));
    stackPushINT(pVM->pStack, ficlParseWord(pVM, si));
    return;
}
