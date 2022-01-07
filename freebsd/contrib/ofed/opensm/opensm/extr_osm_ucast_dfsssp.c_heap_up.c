
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int binary_heap_t ;


 int heap_exchange (int *,int,int) ;
 scalar_t__ heap_smaller (int *,int,int) ;

__attribute__((used)) static uint32_t heap_up(binary_heap_t * heap, uint32_t i)
{
 uint32_t curr = i, father = 0;

 if (curr > 0) {
  father = (curr - 1) >> 1;
  while (heap_smaller(heap, curr, father)) {
   heap_exchange(heap, curr, father);

   curr = father;
   if (curr > 0)
    father = (curr - 1) >> 1;
  }
 }

 return curr;
}
