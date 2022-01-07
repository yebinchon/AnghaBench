
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ i; } ;
struct TYPE_7__ {int i; } ;
struct TYPE_6__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ CELL ;


 TYPE_4__ stackPop (int ) ;
 scalar_t__ stackPopPtr (int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

__attribute__((used)) static void plusStore(FICL_VM *pVM)
{
    CELL *pCell;



    pCell = (CELL *)stackPopPtr(pVM->pStack);
    pCell->i += stackPop(pVM->pStack).i;
}
