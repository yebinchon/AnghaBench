
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int last; int * array; } ;
typedef TYPE_1__ isc_heap_t ;


 int REQUIRE (int) ;
 int VALID_HEAP (TYPE_1__*) ;
 int float_up (TYPE_1__*,unsigned int,int ) ;

void
isc_heap_increased(isc_heap_t *heap, unsigned int index) {
 REQUIRE(VALID_HEAP(heap));
 REQUIRE(index >= 1 && index <= heap->last);

 float_up(heap, index, heap->array[index]);
}
