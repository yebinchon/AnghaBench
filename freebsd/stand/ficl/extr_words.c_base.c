
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; int base; } ;
typedef TYPE_1__ FICL_VM ;
typedef int CELL ;


 int LVALUEtoCELL (int *) ;
 int stackPush (int ,int ) ;
 int vmCheckStack (TYPE_1__*,int ,int) ;

__attribute__((used)) static void base(FICL_VM *pVM)
{
    CELL *pBase;




    pBase = (CELL *)(&pVM->base);
    stackPush(pVM->pStack, LVALUEtoCELL(pBase));
    return;
}
