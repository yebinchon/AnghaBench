
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i; } ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef scalar_t__ FICL_INT ;


 int LVALUEtoCELL (scalar_t__) ;
 TYPE_4__ stackGetTop (int ) ;
 scalar_t__ stackPopINT (int ) ;
 int stackSetTop (int ,int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void sub(FICL_VM *pVM)
{
    FICL_INT i;



    i = stackPopINT(pVM->pStack);
    i = stackGetTop(pVM->pStack).i - i;
    stackSetTop(pVM->pStack, LVALUEtoCELL(i));
    return;
}
