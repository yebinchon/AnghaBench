
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* ip; } ;
typedef TYPE_1__ FICL_VM ;


 int vmBranchRelative (TYPE_1__*,uintptr_t) ;

__attribute__((used)) static void branchParen(FICL_VM *pVM)
{
    vmBranchRelative(pVM, (uintptr_t)*(pVM->ip));
    return;
}
