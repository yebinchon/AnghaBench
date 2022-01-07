
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ param; } ;
typedef TYPE_1__ FICL_WORD ;
typedef int FICL_VM ;


 TYPE_1__* POPPTR () ;
 int PUSHPTR (scalar_t__) ;
 int vmCheckStack (int *,int,int) ;

__attribute__((used)) static void toBody(FICL_VM *pVM)
{
    FICL_WORD *pFW;





    pFW = POPPTR();
    PUSHPTR(pFW->param + 1);
    return;
}
