
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int i; } ;
struct TYPE_7__ {int pad; int base; int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ CELL ;


 int ltoa (int ,int ,int ) ;
 TYPE_2__ stackPop (int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;
 int vmTextOut (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void displayCellNoPad(FICL_VM *pVM)
{
    CELL c;



    c = stackPop(pVM->pStack);
    ltoa((c).i, pVM->pad, pVM->base);
    vmTextOut(pVM, pVM->pad, 0);
    return;
}
