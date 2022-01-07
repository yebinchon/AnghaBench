
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
typedef TYPE_1__ FICL_VM ;


 int COMPILE ;

__attribute__((used)) static void rbracket(FICL_VM *pVM)
{
    pVM->state = COMPILE;
    return;
}
