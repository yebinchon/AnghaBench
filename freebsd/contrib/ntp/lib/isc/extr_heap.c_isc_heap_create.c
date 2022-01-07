
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_result_t ;
typedef int isc_mem_t ;
typedef int isc_heapindex_t ;
typedef int * isc_heapcompare_t ;
struct TYPE_4__ {unsigned int size_increment; int index; int * compare; int * array; scalar_t__ last; int * mctx; scalar_t__ size; int magic; } ;
typedef TYPE_1__ isc_heap_t ;


 int HEAP_MAGIC ;
 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 unsigned int SIZE_INCREMENT ;
 int isc_mem_attach (int *,int **) ;
 TYPE_1__* isc_mem_get (int *,int) ;

isc_result_t
isc_heap_create(isc_mem_t *mctx, isc_heapcompare_t compare,
  isc_heapindex_t index, unsigned int size_increment,
  isc_heap_t **heapp)
{
 isc_heap_t *heap;

 REQUIRE(heapp != ((void*)0) && *heapp == ((void*)0));
 REQUIRE(compare != ((void*)0));

 heap = isc_mem_get(mctx, sizeof(*heap));
 if (heap == ((void*)0))
  return (ISC_R_NOMEMORY);
 heap->magic = HEAP_MAGIC;
 heap->size = 0;
 heap->mctx = ((void*)0);
 isc_mem_attach(mctx, &heap->mctx);
 if (size_increment == 0)
  heap->size_increment = SIZE_INCREMENT;
 else
  heap->size_increment = size_increment;
 heap->last = 0;
 heap->array = ((void*)0);
 heap->compare = compare;
 heap->index = index;

 *heapp = heap;

 return (ISC_R_SUCCESS);
}
