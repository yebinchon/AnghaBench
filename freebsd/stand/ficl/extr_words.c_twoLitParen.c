
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ip; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_INT ;


 int PUSHINT (int ) ;
 int vmBranchRelative (TYPE_1__*,int) ;
 int vmCheckStack (TYPE_1__*,int ,int) ;

__attribute__((used)) static void twoLitParen(FICL_VM *pVM)
{



    PUSHINT(*((FICL_INT *)(pVM->ip)+1));
    PUSHINT(*(FICL_INT *)(pVM->ip));
    vmBranchRelative(pVM, 2);
    return;
}
