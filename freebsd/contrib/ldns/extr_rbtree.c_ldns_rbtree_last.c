
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* root; } ;
typedef TYPE_1__ ldns_rbtree_t ;
struct TYPE_7__ {struct TYPE_7__* right; } ;
typedef TYPE_2__ ldns_rbnode_t ;


 TYPE_2__* LDNS_RBTREE_NULL ;

ldns_rbnode_t *
ldns_rbtree_last(const ldns_rbtree_t *rbtree)
{
 ldns_rbnode_t *node = rbtree->root;

 if (rbtree->root != LDNS_RBTREE_NULL) {
  for (node = rbtree->root; node->right != LDNS_RBTREE_NULL; node = node->right);
 }
 return node;
}
