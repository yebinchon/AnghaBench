
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i; } ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_INT ;


 int LVALUEtoCELL (int ) ;
 TYPE_3__ stackGetTop (int ) ;
 int stackPopINT (int ) ;
 int stackSetTop (int ,int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void add(FICL_VM *pVM)
{
    FICL_INT i;



    i = stackPopINT(pVM->pStack);
    i += stackGetTop(pVM->pStack).i;
    stackSetTop(pVM->pStack, LVALUEtoCELL(i));
    return;
}
