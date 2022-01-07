
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pad; int base; int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_UNS ;


 int stackPopUNS (int ) ;
 int strcat (int ,char*) ;
 int ultoa (int ,int ,int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;
 int vmTextOut (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void uDot(FICL_VM *pVM)
{
    FICL_UNS u;



    u = stackPopUNS(pVM->pStack);
    ultoa(u, pVM->pad, pVM->base);
    strcat(pVM->pad, " ");
    vmTextOut(pVM, pVM->pad, 0);
    return;
}
