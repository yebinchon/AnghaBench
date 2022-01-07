
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* root; } ;
typedef TYPE_1__ ldns_rbtree_t ;
struct TYPE_7__ {struct TYPE_7__* parent; struct TYPE_7__* left; struct TYPE_7__* right; } ;
typedef TYPE_2__ ldns_rbnode_t ;


 TYPE_2__* LDNS_RBTREE_NULL ;

__attribute__((used)) static void
ldns_rbtree_rotate_left(ldns_rbtree_t *rbtree, ldns_rbnode_t *node)
{
 ldns_rbnode_t *right = node->right;
 node->right = right->left;
 if (right->left != LDNS_RBTREE_NULL)
  right->left->parent = node;

 right->parent = node->parent;

 if (node->parent != LDNS_RBTREE_NULL) {
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
