
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* ip; int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef scalar_t__ FICL_UNS ;


 scalar_t__ stackPopUNS (int ) ;
 int vmBranchRelative (TYPE_1__*,uintptr_t) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

__attribute__((used)) static void branch0(FICL_VM *pVM)
{
    FICL_UNS flag;




    flag = stackPopUNS(pVM->pStack);

    if (flag)
    {
        vmBranchRelative(pVM, 1);
    }
    else
    {
        vmBranchRelative(pVM, (uintptr_t)*(pVM->ip));
    }

    return;
}
