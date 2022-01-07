
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int (* cmp ) (int ,int ) ;TYPE_2__* root; int count; } ;
typedef TYPE_1__ ldns_rbtree_t ;
struct TYPE_10__ {struct TYPE_10__* right; struct TYPE_10__* left; int color; struct TYPE_10__* parent; int key; } ;
typedef TYPE_2__ ldns_rbnode_t ;


 TYPE_2__* LDNS_RBTREE_NULL ;
 int RED ;
 int ldns_rbtree_insert_fixup (TYPE_1__*,TYPE_2__*) ;
 int stub1 (int ,int ) ;

ldns_rbnode_t *
ldns_rbtree_insert (ldns_rbtree_t *rbtree, ldns_rbnode_t *data)
{

 int r = 0;


 ldns_rbnode_t *node = rbtree->root;
 ldns_rbnode_t *parent = LDNS_RBTREE_NULL;


 while (node != LDNS_RBTREE_NULL) {

  if ((r = rbtree->cmp(data->key, node->key)) == 0) {
   return ((void*)0);
  }
  parent = node;

  if (r < 0) {
   node = node->left;
  } else {
   node = node->right;
  }
 }


 data->parent = parent;
 data->left = data->right = LDNS_RBTREE_NULL;
 data->color = RED;
 rbtree->count++;


 if (parent != LDNS_RBTREE_NULL) {
  if (r < 0) {
   parent->left = data;
  } else {
   parent->right = data;
  }
 } else {
  rbtree->root = data;
 }


 ldns_rbtree_insert_fixup(rbtree, data);

 return data;
}
