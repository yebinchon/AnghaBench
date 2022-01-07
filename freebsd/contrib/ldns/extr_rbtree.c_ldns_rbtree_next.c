
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* parent; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ ldns_rbnode_t ;


 TYPE_1__* LDNS_RBTREE_NULL ;

ldns_rbnode_t *
ldns_rbtree_next(ldns_rbnode_t *node)
{
 ldns_rbnode_t *parent;

 if (node->right != LDNS_RBTREE_NULL) {

  for (node = node->right;
   node->left != LDNS_RBTREE_NULL;
   node = node->left);
 } else {
  parent = node->parent;
  while (parent != LDNS_RBTREE_NULL && node == parent->right) {
   node = parent;
   parent = parent->parent;
  }
  node = parent;
 }
 return node;
}
