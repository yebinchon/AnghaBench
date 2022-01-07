
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


 TYPE_2__ stackGetTop (int ) ;
 int stackPick (int ,int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void questionDup(FICL_VM *pVM)
{
    CELL c;



    c = stackGetTop(pVM->pStack);

    if (c.i != 0)
        stackPick(pVM->pStack, 0);

    return;
}
