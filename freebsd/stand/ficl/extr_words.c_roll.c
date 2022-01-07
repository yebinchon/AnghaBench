
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int i; } ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 TYPE_3__ stackPop (int ) ;
 int stackRoll (int ,int) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void roll(FICL_VM *pVM)
{
    int i = stackPop(pVM->pStack).i;
    i = (i > 0) ? i : 0;



    stackRoll(pVM->pStack, i);
    return;
}
