
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int range_tree_t ;
struct TYPE_3__ {int rs_end; int rs_start; } ;
typedef TYPE_1__ range_seg_t ;


 scalar_t__ MAX (int ,scalar_t__) ;
 scalar_t__ MIN (int ,scalar_t__) ;
 TYPE_1__* range_tree_find_impl (int *,scalar_t__,scalar_t__) ;
 int range_tree_remove (int *,scalar_t__,scalar_t__) ;

void
range_tree_clear(range_tree_t *rt, uint64_t start, uint64_t size)
{
 range_seg_t *rs;

 if (size == 0)
  return;

 while ((rs = range_tree_find_impl(rt, start, size)) != ((void*)0)) {
  uint64_t free_start = MAX(rs->rs_start, start);
  uint64_t free_end = MIN(rs->rs_end, start + size);
  range_tree_remove(rt, free_start, free_end - free_start);
 }
}
