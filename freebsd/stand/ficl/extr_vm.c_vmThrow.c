
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pState; } ;
typedef TYPE_1__ FICL_VM ;


 int longjmp (int ,int) ;

void vmThrow(FICL_VM *pVM, int except)
{
    if (pVM->pState)
        longjmp(*(pVM->pState), except);
}
