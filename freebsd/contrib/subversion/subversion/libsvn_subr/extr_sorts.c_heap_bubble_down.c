
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_priority_queue__t ;


 scalar_t__ heap_is_less (int *,int,int) ;
 int heap_swap (int *,int,int) ;

__attribute__((used)) static void
heap_bubble_down(svn_priority_queue__t *queue,
                 int idx)
{
  while (idx > 0 && heap_is_less(queue, idx, (idx - 1) / 2))
    {
      heap_swap(queue, idx, (idx - 1) / 2);
      idx = (idx - 1) / 2;
    }
}
