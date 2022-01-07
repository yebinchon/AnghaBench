
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int CELL ;


 scalar_t__ stackPopPtr (int ) ;
 int stackPush (int ,int ) ;
 int swap (TYPE_1__*) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void twoFetch(FICL_VM *pVM)
{
    CELL *pCell;



    pCell = (CELL *)stackPopPtr(pVM->pStack);
    stackPush(pVM->pStack, *pCell++);
    stackPush(pVM->pStack, *pCell);
    swap(pVM);
    return;
}
