
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_5__ {unsigned long long rs_end; unsigned long long rs_start; } ;
typedef TYPE_1__ range_seg_t ;
struct TYPE_6__ {int ms_allocatable_by_size; } ;
typedef TYPE_2__ metaslab_t ;
typedef int avl_tree_t ;


 TYPE_1__* avl_last (int *) ;

uint64_t
metaslab_block_maxsize(metaslab_t *msp)
{
 avl_tree_t *t = &msp->ms_allocatable_by_size;
 range_seg_t *rs;

 if (t == ((void*)0) || (rs = avl_last(t)) == ((void*)0))
  return (0ULL);

 return (rs->rs_end - rs->rs_start);
}
