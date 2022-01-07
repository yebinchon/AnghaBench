
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pStack; int rStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int CELL ;


 int stackFetch (int ,int) ;
 int stackPush (int ,int ) ;

__attribute__((used)) static void loopKCo(FICL_VM *pVM)
{
    CELL index = stackFetch(pVM->rStack, 6);
    stackPush(pVM->pStack, index);

    return;
}
