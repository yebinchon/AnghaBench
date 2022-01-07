
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int range_tree_t ;
typedef int avl_tree_t ;


 int ASSERT0 (int ) ;
 int avl_destroy (int *) ;
 int avl_numnodes (int *) ;

void
rt_avl_destroy(range_tree_t *rt, void *arg)
{
 avl_tree_t *tree = arg;

 ASSERT0(avl_numnodes(tree));
 avl_destroy(tree);
}
