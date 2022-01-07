
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HEAP_SIZE ;
 int bzero (scalar_t__,scalar_t__) ;
 scalar_t__ heap ;
 int setheap (scalar_t__,void*) ;

void
init_heap(void)
{
 bzero(heap, HEAP_SIZE);

 setheap(heap, (void *)((int)heap + HEAP_SIZE));
}
