
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int CELL ;


 int stackPush (int ,int ) ;

void vmPush(FICL_VM *pVM, CELL c)
{
    stackPush(pVM->pStack, c);
    return;
}
