
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int range_tree_t ;
struct TYPE_4__ {scalar_t__ rs_start; scalar_t__ rs_end; } ;
typedef TYPE_1__ range_seg_t ;


 TYPE_1__* range_tree_find_impl (int *,scalar_t__,scalar_t__) ;

range_seg_t *
range_tree_find(range_tree_t *rt, uint64_t start, uint64_t size)
{
 range_seg_t *rs = range_tree_find_impl(rt, start, size);
 if (rs != ((void*)0) && rs->rs_start <= start && rs->rs_end >= start + size)
  return (rs);
 return (((void*)0));
}
