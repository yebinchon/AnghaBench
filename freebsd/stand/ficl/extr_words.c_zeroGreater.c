
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int i; } ;
struct TYPE_6__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ CELL ;


 int FICL_BOOL (int) ;
 scalar_t__ stackPopINT (int ) ;
 int stackPush (int ,TYPE_2__) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void zeroGreater(FICL_VM *pVM)
{
    CELL c;



    c.i = FICL_BOOL(stackPopINT(pVM->pStack) > 0);
    stackPush(pVM->pStack, c);
    return;
}
