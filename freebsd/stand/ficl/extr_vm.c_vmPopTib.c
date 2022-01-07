
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tib; } ;
typedef int TIB ;
typedef TYPE_1__ FICL_VM ;



void vmPopTib(FICL_VM *pVM, TIB *pTib)
{
    if (pTib)
    {
        pVM->tib = *pTib;
    }
    return;
}
