
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rbtree_type ;


 int addr_tree_compare ;
 int rbtree_init (int *,int *) ;

void addr_tree_init(rbtree_type* tree)
{
 rbtree_init(tree, &addr_tree_compare);
}
