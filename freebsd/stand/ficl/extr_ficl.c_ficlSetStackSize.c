
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FICL_DEFAULT_STACK ;
 int defaultStack ;

int ficlSetStackSize(int nStackCells)
{
    if (nStackCells >= FICL_DEFAULT_STACK)
        defaultStack = nStackCells;
    else
        defaultStack = FICL_DEFAULT_STACK;

    return defaultStack;
}
