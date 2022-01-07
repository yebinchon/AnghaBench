
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* link; } ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_HASH ;


 scalar_t__ stackPopPtr (int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

__attribute__((used)) static void setParentWid(FICL_VM *pVM)
{
    FICL_HASH *parent, *child;



    child = (FICL_HASH *)stackPopPtr(pVM->pStack);
    parent = (FICL_HASH *)stackPopPtr(pVM->pStack);

    child->link = parent;
    return;
}
