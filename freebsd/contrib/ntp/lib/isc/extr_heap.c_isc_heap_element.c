
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int last; void** array; } ;
typedef TYPE_1__ isc_heap_t ;


 int REQUIRE (int) ;
 int VALID_HEAP (TYPE_1__*) ;

void *
isc_heap_element(isc_heap_t *heap, unsigned int index) {
 REQUIRE(VALID_HEAP(heap));
 REQUIRE(index >= 1);

 if (index <= heap->last)
  return (heap->array[index]);
 return (((void*)0));
}
