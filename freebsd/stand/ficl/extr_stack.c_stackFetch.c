
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sp; } ;
typedef TYPE_1__ FICL_STACK ;
typedef int CELL ;



CELL stackFetch(FICL_STACK *pStack, int n)
{
    return pStack->sp[-n-1];
}
