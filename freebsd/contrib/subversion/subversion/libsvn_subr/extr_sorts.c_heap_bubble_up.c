
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* elements; } ;
typedef TYPE_2__ svn_priority_queue__t ;
struct TYPE_6__ {int nelts; } ;


 scalar_t__ heap_is_less (TYPE_2__*,int,int) ;
 int heap_swap (TYPE_2__*,int,int) ;

__attribute__((used)) static void
heap_bubble_up(svn_priority_queue__t *queue,
               int idx)
{
  while (2 * idx + 2 < queue->elements->nelts)
    {
      int child = heap_is_less(queue, 2 * idx + 1, 2 * idx + 2)
                ? 2 * idx + 1
                : 2 * idx + 2;

      if (heap_is_less(queue, idx, child))
        return;

      heap_swap(queue, idx, child);
      idx = child;
    }

  if ( 2 * idx + 1 < queue->elements->nelts
      && heap_is_less(queue, 2 * idx + 1, idx))
    heap_swap(queue, 2 * idx + 1, idx);
}
