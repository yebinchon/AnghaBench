
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pad; int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int stackPushPtr (int ,int ) ;

__attribute__((used)) static void pad(FICL_VM *pVM)
{
    stackPushPtr(pVM->pStack, pVM->pad);
}
