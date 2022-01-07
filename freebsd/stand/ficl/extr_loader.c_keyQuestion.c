
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int FICL_FALSE ;
 int FICL_TRUE ;
 scalar_t__ ischar () ;
 int stackPushINT (int ,int ) ;
 int vmCheckStack (TYPE_1__*,int ,int) ;

__attribute__((used)) static void keyQuestion(FICL_VM *pVM)
{
    stackPushINT(pVM->pStack, ischar()? FICL_TRUE : FICL_FALSE);

    return;
}
