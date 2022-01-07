
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ u; } ;
struct TYPE_6__ {scalar_t__ ip; int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef scalar_t__ FICL_UNS ;


 scalar_t__ POPUNS () ;
 int stackDrop (int ,int) ;
 TYPE_4__ stackGetTop (int ) ;
 int vmBranchRelative (TYPE_1__*,int) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void ofParen(FICL_VM *pVM)
{
 FICL_UNS a, b;





 a = POPUNS();
 b = stackGetTop(pVM->pStack).u;

    if (a == b)
    {
  stackDrop(pVM->pStack, 1);
        vmBranchRelative(pVM, 1);
    }
    else
    {
        vmBranchRelative(pVM, *(int *)(pVM->ip));
    }

    return;
}
