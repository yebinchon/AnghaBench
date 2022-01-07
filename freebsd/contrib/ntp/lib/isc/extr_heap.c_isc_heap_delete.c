
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int last; int ** array; scalar_t__ (* compare ) (void*,int *) ;} ;
typedef TYPE_1__ isc_heap_t ;
typedef scalar_t__ isc_boolean_t ;


 int REQUIRE (int) ;
 int VALID_HEAP (TYPE_1__*) ;
 int float_up (TYPE_1__*,unsigned int,int *) ;
 int sink_down (TYPE_1__*,unsigned int,int *) ;
 scalar_t__ stub1 (void*,int *) ;

void
isc_heap_delete(isc_heap_t *heap, unsigned int index) {
 void *elt;
 isc_boolean_t less;

 REQUIRE(VALID_HEAP(heap));
 REQUIRE(index >= 1 && index <= heap->last);

 if (index == heap->last) {
  heap->array[heap->last] = ((void*)0);
  heap->last--;
 } else {
  elt = heap->array[heap->last];
  heap->array[heap->last] = ((void*)0);
  heap->last--;

  less = heap->compare(elt, heap->array[index]);
  heap->array[index] = elt;
  if (less)
   float_up(heap, index, heap->array[index]);
  else
   sink_down(heap, index, heap->array[index]);
 }
}
