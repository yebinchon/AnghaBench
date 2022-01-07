
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* root; } ;
typedef TYPE_1__ rbtree_type ;
struct TYPE_7__ {struct TYPE_7__* parent; struct TYPE_7__* right; struct TYPE_7__* left; } ;
typedef TYPE_2__ rbnode_type ;


 TYPE_2__* RBTREE_NULL ;

__attribute__((used)) static void
rbtree_rotate_right(rbtree_type *rbtree, rbnode_type *node)
{
 rbnode_type *left = node->left;
 node->left = left->right;
 if (left->right != RBTREE_NULL)
  left->right->parent = node;

 left->parent = node->parent;

 if (node->parent != RBTREE_NULL) {
  if (node == node->parent->right) {
   node->parent->right = left;
  } else {
   node->parent->left = left;
  }
 } else {
  rbtree->root = left;
 }
 left->right = node;
 node->parent = left;
}
