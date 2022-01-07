
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* parent; struct TYPE_5__* left; struct TYPE_5__* right; } ;
typedef TYPE_1__ rbnode_type ;


 TYPE_1__* RBTREE_NULL ;

rbnode_type *
rbtree_previous(rbnode_type *node)
{
 rbnode_type *parent;

 if (node->left != RBTREE_NULL) {

  for (node = node->left; node->right != RBTREE_NULL; node = node->right);
 } else {
  parent = node->parent;
  while (parent != RBTREE_NULL && node == parent->left) {
   node = parent;
   parent = parent->parent;
  }
  node = parent;
 }
 return node;
}
