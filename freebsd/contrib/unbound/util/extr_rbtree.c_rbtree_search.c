
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rbtree_type ;
typedef int rbnode_type ;


 scalar_t__ rbtree_find_less_equal (int *,void const*,int **) ;

rbnode_type *
rbtree_search (rbtree_type *rbtree, const void *key)
{
 rbnode_type *node;

 if (rbtree_find_less_equal(rbtree, key, &node)) {
  return node;
 } else {
  return ((void*)0);
 }
}
