
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t MALLOCALIGN_MASK ;
 void* heapbase ;
 int maxheap ;

void
setheap(void *base, void *top)
{

    heapbase = (void *)(((uintptr_t)base + MALLOCALIGN_MASK) &
        ~MALLOCALIGN_MASK);
    maxheap = (char *)top - (char *)heapbase;
}
