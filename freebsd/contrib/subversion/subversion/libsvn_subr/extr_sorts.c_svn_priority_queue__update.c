
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_priority_queue__t ;


 int heap_bubble_up (int *,int ) ;

void
svn_priority_queue__update(svn_priority_queue__t *queue)
{
  heap_bubble_up(queue, 0);
}
