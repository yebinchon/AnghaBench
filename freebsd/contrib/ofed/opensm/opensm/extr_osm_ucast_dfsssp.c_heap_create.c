
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t heap_id; } ;
typedef TYPE_1__ vertex_t ;
typedef size_t uint32_t ;
struct TYPE_8__ {size_t size; TYPE_1__** nodes; } ;
typedef TYPE_2__ binary_heap_t ;


 int free (TYPE_2__*) ;
 int heap_down (TYPE_2__*,size_t) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static int heap_create(vertex_t * adj_list, uint32_t adj_list_size,
         binary_heap_t ** binheap)
{
 binary_heap_t *heap = ((void*)0);
 uint32_t i = 0;


 heap = (binary_heap_t *) malloc(sizeof(binary_heap_t));
 if (!heap)
  return 1;


 heap->size = adj_list_size;


 heap->nodes = (vertex_t **) malloc(heap->size * sizeof(vertex_t *));
 if (!heap->nodes) {
  free(heap);
  return 1;
 }
 for (i = 0; i < heap->size; i++) {
  heap->nodes[i] = &adj_list[i];
  heap->nodes[i]->heap_id = i;
 }


 for (i = heap->size; i > 0; i--)
  heap_down(heap, i - 1);

 *binheap = heap;
 return 0;
}
