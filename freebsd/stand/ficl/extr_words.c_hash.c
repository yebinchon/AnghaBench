
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pStack; } ;
typedef int STRINGINFO ;
typedef TYPE_1__ FICL_VM ;


 int PUSHUNS (int ) ;
 int SI_SETLEN (int ,int ) ;
 int SI_SETPTR (int ,int ) ;
 int hashHashCode (int ) ;
 int stackPopPtr (int ) ;
 int stackPopUNS (int ) ;

__attribute__((used)) static void hash(FICL_VM *pVM)
{
    STRINGINFO si;
    SI_SETLEN(si, stackPopUNS(pVM->pStack));
    SI_SETPTR(si, stackPopPtr(pVM->pStack));
    PUSHUNS(hashHashCode(si));
    return;
}
