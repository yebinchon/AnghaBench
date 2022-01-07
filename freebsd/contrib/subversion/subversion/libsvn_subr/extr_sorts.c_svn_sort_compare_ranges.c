
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;
typedef TYPE_1__ svn_merge_range_t ;



int
svn_sort_compare_ranges(const void *a, const void *b)
{
  const svn_merge_range_t *item1 = *((const svn_merge_range_t * const *) a);
  const svn_merge_range_t *item2 = *((const svn_merge_range_t * const *) b);

  if (item1->start == item2->start
      && item1->end == item2->end)
    return 0;

  if (item1->start == item2->start)
    return item1->end < item2->end ? -1 : 1;

  return item1->start < item2->start ? -1 : 1;
}
