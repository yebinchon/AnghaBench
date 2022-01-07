
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


 int stackPick (int ,scalar_t__) ;
 TYPE_2__ stackPop (int ) ;
 int vmCheckStack (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void pick(FICL_VM *pVM)
{
    CELL c = stackPop(pVM->pStack);



    stackPick(pVM->pStack, c.i);
    return;
}
