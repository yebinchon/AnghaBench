
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* nodes; } ;
typedef TYPE_1__ binary_heap_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void heap_free(binary_heap_t * heap)
{
 if (heap) {
  if (heap->nodes) {
   free(heap->nodes);
   heap->nodes = ((void*)0);
  }
  free(heap);
 }
}
