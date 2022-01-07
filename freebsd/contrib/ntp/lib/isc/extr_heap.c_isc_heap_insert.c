
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_6__ {int last; unsigned int size; } ;
typedef TYPE_1__ isc_heap_t ;


 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int RUNTIME_CHECK (int) ;
 int VALID_HEAP (TYPE_1__*) ;
 int float_up (TYPE_1__*,unsigned int,void*) ;
 int resize (TYPE_1__*) ;

isc_result_t
isc_heap_insert(isc_heap_t *heap, void *elt) {
 unsigned int new_last;

 REQUIRE(VALID_HEAP(heap));

 new_last = heap->last + 1;
 RUNTIME_CHECK(new_last > 0);
 if (new_last >= heap->size && !resize(heap))
  return (ISC_R_NOMEMORY);
 heap->last = new_last;

 float_up(heap, new_last, elt);

 return (ISC_R_SUCCESS);
}
