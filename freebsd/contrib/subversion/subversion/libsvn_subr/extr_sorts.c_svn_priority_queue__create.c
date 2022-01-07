
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* compare_func ) (void const*,void const*) ;TYPE_2__* elements; } ;
typedef TYPE_1__ svn_priority_queue__t ;
struct TYPE_8__ {int nelts; int pool; } ;
typedef TYPE_2__ apr_array_header_t ;


 TYPE_1__* apr_pcalloc (int ,int) ;
 int heap_bubble_up (TYPE_1__*,int) ;

svn_priority_queue__t *
svn_priority_queue__create(apr_array_header_t *elements,
                           int (*compare_func)(const void *, const void *))
{
  int i;

  svn_priority_queue__t *queue = apr_pcalloc(elements->pool, sizeof(*queue));
  queue->elements = elements;
  queue->compare_func = compare_func;

  for (i = elements->nelts / 2; i >= 0; --i)
    heap_bubble_up(queue, i);

  return queue;
}
