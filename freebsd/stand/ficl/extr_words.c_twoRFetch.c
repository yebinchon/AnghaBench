
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rStack; int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int stackFetch (int ,int) ;
 int stackPush (int ,int ) ;
 int vmCheckStack (TYPE_1__*,int ,int) ;

__attribute__((used)) static void twoRFetch(FICL_VM *pVM)
{



    stackPush(pVM->pStack, stackFetch(pVM->rStack, 1));
    stackPush(pVM->pStack, stackFetch(pVM->rStack, 0));
    return;
}
