
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DefaultArrowKeys () ;
 int PutFreeNode (int *) ;
 int * Xmap ;

void
ResetXmap(void)
{
    PutFreeNode(Xmap);
    Xmap = ((void*)0);

    DefaultArrowKeys();
    return;
}
