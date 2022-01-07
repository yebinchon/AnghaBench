
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* elements; } ;
typedef TYPE_2__ svn_priority_queue__t ;
typedef int apr_size_t ;
struct TYPE_4__ {int nelts; } ;



apr_size_t
svn_priority_queue__size(svn_priority_queue__t *queue)
{
  return queue->elements->nelts;
}
