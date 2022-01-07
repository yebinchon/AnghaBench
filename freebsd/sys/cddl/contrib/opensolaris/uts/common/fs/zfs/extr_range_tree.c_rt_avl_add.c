
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int range_tree_t ;
typedef int range_seg_t ;
typedef int avl_tree_t ;


 int avl_add (int *,int *) ;

void
rt_avl_add(range_tree_t *rt, range_seg_t *rs, void *arg)
{
 avl_tree_t *tree = arg;
 avl_add(tree, rs);
}
