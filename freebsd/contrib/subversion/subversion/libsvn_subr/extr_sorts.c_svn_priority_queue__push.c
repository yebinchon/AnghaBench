
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_4__* elements; } ;
typedef TYPE_1__ svn_priority_queue__t ;
struct TYPE_6__ {void const* elts; scalar_t__ nelts; int elt_size; } ;


 int apr_array_push (TYPE_4__*) ;
 int assert (int ) ;
 int heap_bubble_down (TYPE_1__*,scalar_t__) ;
 int memcpy (int ,void const*,int ) ;

void
svn_priority_queue__push(svn_priority_queue__t *queue,
                         const void *element)
{

  assert(element && element != queue->elements->elts);

  memcpy(apr_array_push(queue->elements), element, queue->elements->elt_size);
  heap_bubble_down(queue, queue->elements->nelts - 1);
}
