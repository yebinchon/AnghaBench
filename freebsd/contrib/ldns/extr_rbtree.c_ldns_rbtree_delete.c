
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int count; } ;
typedef TYPE_1__ ldns_rbtree_t ;
struct TYPE_21__ {scalar_t__ color; struct TYPE_21__* right; struct TYPE_21__* left; struct TYPE_21__* parent; } ;
typedef TYPE_2__ ldns_rbnode_t ;


 void* BLACK ;
 TYPE_2__* LDNS_RBTREE_NULL ;
 scalar_t__ RED ;
 int change_child_ptr (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int change_parent_ptr (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int ldns_rbtree_delete_fixup (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* ldns_rbtree_search (TYPE_1__*,void const*) ;
 int swap_int8 (scalar_t__*,scalar_t__*) ;
 int swap_np (TYPE_2__**,TYPE_2__**) ;

ldns_rbnode_t*
ldns_rbtree_delete(ldns_rbtree_t *rbtree, const void *key)
{
 ldns_rbnode_t *to_delete;
 ldns_rbnode_t *child;
 if((to_delete = ldns_rbtree_search(rbtree, key)) == 0) return 0;
 rbtree->count--;


 if(to_delete->left != LDNS_RBTREE_NULL &&
    to_delete->right != LDNS_RBTREE_NULL)
 {

  ldns_rbnode_t *smright = to_delete->right;
  while(smright->left != LDNS_RBTREE_NULL)
   smright = smright->left;






  swap_int8(&to_delete->color, &smright->color);


  change_parent_ptr(rbtree, to_delete->parent, to_delete, smright);
  if(to_delete->right != smright)
   change_parent_ptr(rbtree, smright->parent, smright, to_delete);


  change_child_ptr(smright->left, smright, to_delete);
  change_child_ptr(smright->left, smright, to_delete);
  change_child_ptr(smright->right, smright, to_delete);
  change_child_ptr(smright->right, smright, to_delete);
  change_child_ptr(to_delete->left, to_delete, smright);
  if(to_delete->right != smright)
   change_child_ptr(to_delete->right, to_delete, smright);
  if(to_delete->right == smright)
  {

   to_delete->right = to_delete;
   smright->parent = smright;
  }


  swap_np(&to_delete->parent, &smright->parent);
  swap_np(&to_delete->left, &smright->left);
  swap_np(&to_delete->right, &smright->right);


 }

 if(to_delete->left != LDNS_RBTREE_NULL) child = to_delete->left;
 else child = to_delete->right;


 change_parent_ptr(rbtree, to_delete->parent, to_delete, child);
 change_child_ptr(child, to_delete, to_delete->parent);

 if(to_delete->color == RED)
 {

 }
 else if(child->color == RED)
 {

  if(child!=LDNS_RBTREE_NULL) child->color = BLACK;
 }
 else ldns_rbtree_delete_fixup(rbtree, child, to_delete->parent);


 to_delete->parent = LDNS_RBTREE_NULL;
 to_delete->left = LDNS_RBTREE_NULL;
 to_delete->right = LDNS_RBTREE_NULL;
 to_delete->color = BLACK;
 return to_delete;
}
