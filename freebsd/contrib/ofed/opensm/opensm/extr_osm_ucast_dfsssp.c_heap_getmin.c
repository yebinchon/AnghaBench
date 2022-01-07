
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vertex_t ;
struct TYPE_5__ {int size; int ** nodes; } ;
typedef TYPE_1__ binary_heap_t ;


 int heap_down (TYPE_1__*,int ) ;
 int heap_exchange (TYPE_1__*,int ,int) ;

__attribute__((used)) static vertex_t *heap_getmin(binary_heap_t * heap)
{
 vertex_t *min = ((void*)0);

 if (heap->size > 0)
  min = heap->nodes[0];

 if (min == ((void*)0))
  return min;

 if (heap->size > 0) {
  if (heap->size > 1) {
   heap_exchange(heap, 0, heap->size - 1);
   heap->size--;
   heap_down(heap, 0);
  } else {
   heap->size--;
  }
 }

 return min;
}
