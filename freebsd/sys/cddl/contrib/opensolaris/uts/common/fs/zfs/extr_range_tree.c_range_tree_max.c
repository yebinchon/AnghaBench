
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int rt_root; } ;
typedef TYPE_1__ range_tree_t ;
struct TYPE_6__ {int rs_end; } ;
typedef TYPE_2__ range_seg_t ;


 TYPE_2__* avl_last (int *) ;

uint64_t
range_tree_max(range_tree_t *rt)
{
 range_seg_t *rs = avl_last(&rt->rt_root);
 return (rs != ((void*)0) ? rs->rs_end : 0);
}
