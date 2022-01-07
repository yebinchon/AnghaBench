
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* elements; } ;
typedef TYPE_2__ svn_priority_queue__t ;
struct TYPE_5__ {int nelts; int elt_size; scalar_t__ elts; } ;


 int heap_bubble_up (TYPE_2__*,int ) ;
 int memmove (scalar_t__,scalar_t__,int) ;

void
svn_priority_queue__pop(svn_priority_queue__t *queue)
{
  if (queue->elements->nelts)
    {
      memmove(queue->elements->elts,
              queue->elements->elts
              + (queue->elements->nelts - 1) * queue->elements->elt_size,
              queue->elements->elt_size);
      --queue->elements->nelts;
      heap_bubble_up(queue, 0);
    }
}
