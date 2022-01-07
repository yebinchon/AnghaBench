
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* cmp ) (void const*,int ) ;TYPE_2__* root; } ;
typedef TYPE_1__ ldns_rbtree_t ;
struct TYPE_7__ {struct TYPE_7__* right; struct TYPE_7__* left; int key; } ;
typedef TYPE_2__ ldns_rbnode_t ;


 TYPE_2__* LDNS_RBTREE_NULL ;
 int stub1 (void const*,int ) ;

int
ldns_rbtree_find_less_equal(ldns_rbtree_t *rbtree, const void *key, ldns_rbnode_t **result)
{
 int r;
 ldns_rbnode_t *node;


 node = rbtree->root;

 *result = ((void*)0);


 while (node != LDNS_RBTREE_NULL) {
  r = rbtree->cmp(key, node->key);
  if (r == 0) {

   *result = node;
   return 1;
  }
  if (r < 0) {
   node = node->left;
  } else {

   *result = node;
   node = node->right;
  }
 }
 return 0;
}
