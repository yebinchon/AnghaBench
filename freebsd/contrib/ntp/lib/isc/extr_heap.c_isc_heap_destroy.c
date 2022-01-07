
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int mctx; scalar_t__ magic; int * array; } ;
typedef TYPE_1__ isc_heap_t ;


 int REQUIRE (int ) ;
 int VALID_HEAP (TYPE_1__*) ;
 int isc_mem_put (int ,int *,int) ;
 int isc_mem_putanddetach (int *,TYPE_1__*,int) ;

void
isc_heap_destroy(isc_heap_t **heapp) {
 isc_heap_t *heap;

 REQUIRE(heapp != ((void*)0));
 heap = *heapp;
 REQUIRE(VALID_HEAP(heap));

 if (heap->array != ((void*)0))
  isc_mem_put(heap->mctx, heap->array,
       heap->size * sizeof(void *));
 heap->magic = 0;
 isc_mem_putanddetach(&heap->mctx, heap, sizeof(*heap));

 *heapp = ((void*)0);
}
