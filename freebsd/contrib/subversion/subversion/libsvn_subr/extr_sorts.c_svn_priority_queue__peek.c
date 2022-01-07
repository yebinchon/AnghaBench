
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* elements; } ;
typedef TYPE_2__ svn_priority_queue__t ;
struct TYPE_4__ {void* elts; scalar_t__ nelts; } ;



void *
svn_priority_queue__peek(svn_priority_queue__t *queue)
{
  return queue->elements->nelts ? queue->elements->elts : ((void*)0);
}
