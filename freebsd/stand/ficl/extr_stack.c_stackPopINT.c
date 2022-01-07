
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sp; } ;
struct TYPE_4__ {int i; } ;
typedef TYPE_2__ FICL_STACK ;
typedef int FICL_INT ;



FICL_INT stackPopINT(FICL_STACK *pStack)
{
    return (*--pStack->sp).i;
}
