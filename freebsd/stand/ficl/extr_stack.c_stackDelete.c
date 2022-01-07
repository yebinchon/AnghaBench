
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_STACK ;


 int ficlFree (int *) ;

void stackDelete(FICL_STACK *pStack)
{
    if (pStack)
        ficlFree(pStack);
    return;
}
