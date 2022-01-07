
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* root; } ;
typedef TYPE_1__ rbtree_type ;
struct TYPE_7__ {struct TYPE_7__* parent; struct TYPE_7__* left; struct TYPE_7__* right; } ;
typedef TYPE_2__ rbnode_type ;


 TYPE_2__* RBTREE_NULL ;

__attribute__((used)) static void
rbtree_rotate_left(rbtree_type *rbtree, rbnode_type *node)
{
 rbnode_type *right = node->right;
 node->right = right->left;
 if (right->left != RBTREE_NULL)
  right->left->parent = node;

 right->parent = node->parent;

 if (node->parent != RBTREE_NULL) {
  if (node == node->parent->left) {
   node->parent->left = right;
  } else {
   node->parent->right = right;
  }
 } else {
  rbtree->root = right;
 }
 right->left = node;
 node->parent = right;
}
