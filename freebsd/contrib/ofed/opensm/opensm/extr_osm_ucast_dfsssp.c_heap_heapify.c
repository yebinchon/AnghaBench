
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int binary_heap_t ;


 int heap_down (int *,int ) ;
 int heap_up (int *,int ) ;

__attribute__((used)) static inline void heap_heapify(binary_heap_t * heap, uint32_t i)
{
 heap_down(heap, heap_up(heap, i));
}
