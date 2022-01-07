
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_STACK ;


 int stackFetch (int *,int) ;
 int stackPush (int *,int ) ;

void stackPick(FICL_STACK *pStack, int n)
{
    stackPush(pStack, stackFetch(pStack, n));
    return;
}
