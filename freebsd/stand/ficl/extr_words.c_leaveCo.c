
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rStack; } ;
typedef TYPE_1__ FICL_VM ;


 int stackDrop (int ,int) ;
 int vmPopIP (TYPE_1__*) ;

__attribute__((used)) static void leaveCo(FICL_VM *pVM)
{

    stackDrop(pVM->rStack, 2);

    vmPopIP(pVM);
    return;
}
