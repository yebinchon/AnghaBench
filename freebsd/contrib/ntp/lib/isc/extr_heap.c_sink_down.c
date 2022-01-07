
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int last; void** array; int (* index ) (void*,unsigned int) ;scalar_t__ (* compare ) (void*,void*) ;} ;
typedef TYPE_1__ isc_heap_t ;


 int HEAPCONDITION (unsigned int) ;
 int INSIST (int ) ;
 unsigned int heap_left (unsigned int) ;
 scalar_t__ stub1 (void*,void*) ;
 scalar_t__ stub2 (void*,void*) ;
 int stub3 (void*,unsigned int) ;
 int stub4 (void*,unsigned int) ;

__attribute__((used)) static void
sink_down(isc_heap_t *heap, unsigned int i, void *elt) {
 unsigned int j, size, half_size;
 size = heap->last;
 half_size = size / 2;
 while (i <= half_size) {

  j = heap_left(i);
  if (j < size && heap->compare(heap->array[j+1],
           heap->array[j]))
   j++;
  if (heap->compare(elt, heap->array[j]))
   break;
  heap->array[i] = heap->array[j];
  if (heap->index != ((void*)0))
   (heap->index)(heap->array[i], i);
  i = j;
 }
 heap->array[i] = elt;
 if (heap->index != ((void*)0))
  (heap->index)(heap->array[i], i);

 INSIST(HEAPCONDITION(i));
}
