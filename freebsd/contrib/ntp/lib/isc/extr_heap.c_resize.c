
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; size_t size_increment; void** array; int mctx; } ;
typedef TYPE_1__ isc_heap_t ;
typedef int isc_boolean_t ;


 int ISC_FALSE ;
 int ISC_TRUE ;
 int REQUIRE (int ) ;
 int VALID_HEAP (TYPE_1__*) ;
 void** isc_mem_get (int ,size_t) ;
 int isc_mem_put (int ,void**,int) ;
 int memcpy (void**,void**,int) ;

__attribute__((used)) static isc_boolean_t
resize(isc_heap_t *heap) {
 void **new_array;
 size_t new_size;

 REQUIRE(VALID_HEAP(heap));

 new_size = heap->size + heap->size_increment;
 new_array = isc_mem_get(heap->mctx, new_size * sizeof(void *));
 if (new_array == ((void*)0))
  return (ISC_FALSE);
 if (heap->array != ((void*)0)) {
  memcpy(new_array, heap->array, heap->size * sizeof(void *));
  isc_mem_put(heap->mctx, heap->array,
       heap->size * sizeof(void *));
 }
 heap->size = new_size;
 heap->array = new_array;

 return (ISC_TRUE);
}
