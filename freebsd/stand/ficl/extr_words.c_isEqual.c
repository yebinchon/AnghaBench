
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ i; } ;
struct TYPE_6__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ CELL ;


 int FICL_BOOL (int) ;
 int PUSHINT (int ) ;
 TYPE_2__ stackPop (int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void isEqual(FICL_VM *pVM)
{
    CELL x, y;




    x = stackPop(pVM->pStack);
    y = stackPop(pVM->pStack);
    PUSHINT(FICL_BOOL(x.i == y.i));
    return;
}
