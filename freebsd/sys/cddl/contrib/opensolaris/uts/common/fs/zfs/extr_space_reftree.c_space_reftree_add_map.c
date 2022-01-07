
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rt_root; } ;
typedef TYPE_1__ range_tree_t ;
struct TYPE_8__ {int rs_end; int rs_start; } ;
typedef TYPE_2__ range_seg_t ;
typedef int int64_t ;
typedef int avl_tree_t ;


 TYPE_2__* AVL_NEXT (int *,TYPE_2__*) ;
 TYPE_2__* avl_first (int *) ;
 int space_reftree_add_seg (int *,int ,int ,int ) ;

void
space_reftree_add_map(avl_tree_t *t, range_tree_t *rt, int64_t refcnt)
{
 range_seg_t *rs;

 for (rs = avl_first(&rt->rt_root); rs; rs = AVL_NEXT(&rt->rt_root, rs))
  space_reftree_add_seg(t, rs->rs_start, rs->rs_end, refcnt);
}
