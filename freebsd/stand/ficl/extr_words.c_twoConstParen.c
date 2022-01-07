
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pStack; TYPE_1__* runningWord; } ;
struct TYPE_5__ {int * param; } ;
typedef TYPE_1__ FICL_WORD ;
typedef TYPE_2__ FICL_VM ;


 int stackPush (int ,int ) ;
 int vmCheckStack (TYPE_2__*,int ,int) ;

void twoConstParen(FICL_VM *pVM)
{
    FICL_WORD *pFW = pVM->runningWord;



    stackPush(pVM->pStack, pFW->param[0]);
    stackPush(pVM->pStack, pFW->param[1]);
    return;
}
