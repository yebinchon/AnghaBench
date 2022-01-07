
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef scalar_t__ FICL_UNS ;


 int FICL_BOOL (int) ;
 int PUSHINT (int ) ;
 scalar_t__ stackPopUNS (int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void uIsGreater(FICL_VM *pVM)
{
    FICL_UNS u1, u2;



    u2 = stackPopUNS(pVM->pStack);
    u1 = stackPopUNS(pVM->pStack);
    PUSHINT(FICL_BOOL(u1 > u2));
    return;
}
