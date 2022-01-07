
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rStack; } ;
typedef TYPE_1__ FICL_VM ;


 int POP () ;
 int stackPush (int ,int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

__attribute__((used)) static void toRStack(FICL_VM *pVM)
{




    stackPush(pVM->rStack, POP());
}
