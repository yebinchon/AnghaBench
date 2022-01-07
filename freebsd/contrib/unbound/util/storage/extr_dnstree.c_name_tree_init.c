
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rbtree_type ;


 int name_tree_compare ;
 int rbtree_init (int *,int *) ;

void name_tree_init(rbtree_type* tree)
{
 rbtree_init(tree, &name_tree_compare);
}
