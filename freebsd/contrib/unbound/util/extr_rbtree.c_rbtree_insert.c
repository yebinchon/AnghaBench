
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int (* cmp ) (int ,int ) ;TYPE_2__* root; int count; } ;
typedef TYPE_1__ rbtree_type ;
struct TYPE_10__ {struct TYPE_10__* right; struct TYPE_10__* left; int color; struct TYPE_10__* parent; int key; } ;
typedef TYPE_2__ rbnode_type ;


 TYPE_2__* RBTREE_NULL ;
 int RED ;
 int fptr_ok (int ) ;
 int fptr_whitelist_rbtree_cmp (int (*) (int ,int )) ;
 int rbtree_insert_fixup (TYPE_1__*,TYPE_2__*) ;
 int stub1 (int ,int ) ;

rbnode_type *
rbtree_insert (rbtree_type *rbtree, rbnode_type *data)
{

 int r = 0;


 rbnode_type *node = rbtree->root;
 rbnode_type *parent = RBTREE_NULL;

 fptr_ok(fptr_whitelist_rbtree_cmp(rbtree->cmp));

 while (node != RBTREE_NULL) {

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
 data->left = data->right = RBTREE_NULL;
 data->color = RED;
 rbtree->count++;


 if (parent != RBTREE_NULL) {
  if (r < 0) {
   parent->left = data;
  } else {
   parent->right = data;
  }
 } else {
  rbtree->root = data;
 }


 rbtree_insert_fixup(rbtree, data);

 return data;
}
