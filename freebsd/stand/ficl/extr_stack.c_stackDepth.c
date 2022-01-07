
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_STACK ;


 int STKDEPTH (int *) ;

int stackDepth(FICL_STACK *pStack)
{
    return STKDEPTH(pStack);
}
