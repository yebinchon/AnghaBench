
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** array; int (* index ) (void*,unsigned int) ;scalar_t__ (* compare ) (void*,void*) ;} ;
typedef TYPE_1__ isc_heap_t ;


 int HEAPCONDITION (unsigned int) ;
 int INSIST (int ) ;
 unsigned int heap_parent (unsigned int) ;
 scalar_t__ stub1 (void*,void*) ;
 int stub2 (void*,unsigned int) ;
 int stub3 (void*,unsigned int) ;

__attribute__((used)) static void
float_up(isc_heap_t *heap, unsigned int i, void *elt) {
 unsigned int p;

 for (p = heap_parent(i) ;
      i > 1 && heap->compare(elt, heap->array[p]) ;
      i = p, p = heap_parent(i)) {
  heap->array[i] = heap->array[p];
  if (heap->index != ((void*)0))
   (heap->index)(heap->array[i], i);
 }
 heap->array[i] = elt;
 if (heap->index != ((void*)0))
  (heap->index)(heap->array[i], i);

 INSIST(HEAPCONDITION(i));
}
