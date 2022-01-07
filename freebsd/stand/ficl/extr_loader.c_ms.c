
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int delay (int) ;
 int stackPopUNS (int ) ;
 int usleep (int) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

__attribute__((used)) static void ms(FICL_VM *pVM)
{






    delay(stackPopUNS(pVM->pStack)*1000);

    return;
}
