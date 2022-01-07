
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ i; } ;
struct TYPE_7__ {scalar_t__ i; } ;
struct TYPE_6__ {scalar_t__* ip; int rStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef scalar_t__ FICL_INT ;


 int LVALUEtoCELL (scalar_t__) ;
 int stackDrop (int ,int) ;
 TYPE_4__ stackFetch (int ,int) ;
 TYPE_3__ stackGetTop (int ) ;
 int stackSetTop (int ,int ) ;
 int vmBranchRelative (TYPE_1__*,uintptr_t) ;

__attribute__((used)) static void loopParen(FICL_VM *pVM)
{
    FICL_INT index = stackGetTop(pVM->rStack).i;
    FICL_INT limit = stackFetch(pVM->rStack, 1).i;

    index++;

    if (index >= limit)
    {
        stackDrop(pVM->rStack, 3);
        vmBranchRelative(pVM, 1);
    }
    else
    {
        stackSetTop(pVM->rStack, LVALUEtoCELL(index));
        vmBranchRelative(pVM, (uintptr_t)*(pVM->ip));
    }

    return;
}
