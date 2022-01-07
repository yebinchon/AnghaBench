
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t heap_id; } ;
typedef TYPE_1__ vertex_t ;
typedef size_t uint32_t ;
struct TYPE_5__ {TYPE_1__** nodes; } ;
typedef TYPE_2__ binary_heap_t ;



__attribute__((used)) static void heap_exchange(binary_heap_t * heap, uint32_t i, uint32_t j)
{
 uint32_t tmp_heap_id = 0;
 vertex_t *tmp_node = ((void*)0);


 tmp_heap_id = heap->nodes[i]->heap_id;
 heap->nodes[i]->heap_id = heap->nodes[j]->heap_id;
 heap->nodes[j]->heap_id = tmp_heap_id;

 tmp_node = heap->nodes[i];
 heap->nodes[i] = heap->nodes[j];
 heap->nodes[j] = tmp_node;
}
