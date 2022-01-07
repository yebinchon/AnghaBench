
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* cmp ) (void const*,int ) ;TYPE_2__* root; } ;
typedef TYPE_1__ rbtree_type ;
struct TYPE_8__ {struct TYPE_8__* right; struct TYPE_8__* left; int key; } ;
typedef TYPE_2__ rbnode_type ;


 TYPE_2__* RBTREE_NULL ;
 int fptr_ok (int ) ;
 int fptr_whitelist_rbtree_cmp (int (*) (void const*,int )) ;
 int log_assert (TYPE_2__**) ;
 int stub1 (void const*,int ) ;

int
rbtree_find_less_equal(rbtree_type *rbtree, const void *key,
 rbnode_type **result)
{
 int r;
 rbnode_type *node;

 log_assert(result);


 node = rbtree->root;

 *result = ((void*)0);
 fptr_ok(fptr_whitelist_rbtree_cmp(rbtree->cmp));


 while (node != RBTREE_NULL) {
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
