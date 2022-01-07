
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_INT ;


 int PUSHINT (int ) ;
 int stackPopINT (int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void negate(FICL_VM *pVM)
{
    FICL_INT i;



    i = -stackPopINT(pVM->pStack);
    PUSHINT(i);
    return;
}
