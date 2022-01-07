
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_UNS ;
typedef int DPUNS ;


 int POPUNS () ;
 int ficlLongMul (int ,int ) ;
 int u64Push (int ,int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void umStar(FICL_VM *pVM)
{
    FICL_UNS u2;
    FICL_UNS u1;
    DPUNS ud;




    u2 = POPUNS();
    u1 = POPUNS();

    ud = ficlLongMul(u1, u2);
    u64Push(pVM->pStack, ud);
    return;
}
