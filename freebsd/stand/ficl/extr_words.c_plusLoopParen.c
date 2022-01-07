
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ i; } ;
struct TYPE_10__ {scalar_t__ i; } ;
struct TYPE_9__ {scalar_t__ i; } ;
struct TYPE_8__ {scalar_t__* ip; int rStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef scalar_t__ FICL_INT ;


 int LVALUEtoCELL (scalar_t__) ;
 TYPE_7__ POP () ;
 int stackDrop (int ,int) ;
 TYPE_5__ stackFetch (int ,int) ;
 TYPE_4__ stackGetTop (int ) ;
 int stackSetTop (int ,int ) ;
 int vmBranchRelative (TYPE_1__*,uintptr_t) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

__attribute__((used)) static void plusLoopParen(FICL_VM *pVM)
{
    FICL_INT index,limit,increment;
    int flag;





    index = stackGetTop(pVM->rStack).i;
    limit = stackFetch(pVM->rStack, 1).i;
    increment = POP().i;

    index += increment;

    if (increment < 0)
        flag = (index < limit);
    else
        flag = (index >= limit);

    if (flag)
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
