
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ldns_rbtree_t ;
struct TYPE_7__ {scalar_t__ color; struct TYPE_7__* right; struct TYPE_7__* left; struct TYPE_7__* parent; } ;
typedef TYPE_1__ ldns_rbnode_t ;


 scalar_t__ BLACK ;
 TYPE_1__* LDNS_RBTREE_NULL ;
 scalar_t__ RED ;
 int ldns_rbtree_rotate_left (int *,TYPE_1__*) ;
 int ldns_rbtree_rotate_right (int *,TYPE_1__*) ;

__attribute__((used)) static void ldns_rbtree_delete_fixup(ldns_rbtree_t* rbtree, ldns_rbnode_t* child, ldns_rbnode_t* child_parent)
{
 ldns_rbnode_t* sibling;
 int go_up = 1;


 if(child_parent->right == child) sibling = child_parent->left;
 else sibling = child_parent->right;

 while(go_up)
 {
  if(child_parent == LDNS_RBTREE_NULL)
  {

   return;
  }

  if(sibling->color == RED)
  {
   child_parent->color = RED;
   sibling->color = BLACK;
   if(child_parent->right == child)
    ldns_rbtree_rotate_right(rbtree, child_parent);
   else ldns_rbtree_rotate_left(rbtree, child_parent);

   if(child_parent->right == child) sibling = child_parent->left;
   else sibling = child_parent->right;
  }

  if(child_parent->color == BLACK
   && sibling->color == BLACK
   && sibling->left->color == BLACK
   && sibling->right->color == BLACK)
  {
   if(sibling != LDNS_RBTREE_NULL)
    sibling->color = RED;

   child = child_parent;
   child_parent = child_parent->parent;

   if(child_parent->right == child) sibling = child_parent->left;
   else sibling = child_parent->right;
  }
  else go_up = 0;
 }

 if(child_parent->color == RED
  && sibling->color == BLACK
  && sibling->left->color == BLACK
  && sibling->right->color == BLACK)
 {

  if(sibling != LDNS_RBTREE_NULL)
   sibling->color = RED;
  child_parent->color = BLACK;
  return;
 }



 if(child_parent->right == child
  && sibling->color == BLACK
  && sibling->right->color == RED
  && sibling->left->color == BLACK)
 {
  sibling->color = RED;
  sibling->right->color = BLACK;
  ldns_rbtree_rotate_left(rbtree, sibling);

  if(child_parent->right == child) sibling = child_parent->left;
  else sibling = child_parent->right;
 }
 else if(child_parent->left == child
  && sibling->color == BLACK
  && sibling->left->color == RED
  && sibling->right->color == BLACK)
 {
  sibling->color = RED;
  sibling->left->color = BLACK;
  ldns_rbtree_rotate_right(rbtree, sibling);

  if(child_parent->right == child) sibling = child_parent->left;
  else sibling = child_parent->right;
 }


 sibling->color = child_parent->color;
 child_parent->color = BLACK;
 if(child_parent->right == child)
 {
  sibling->left->color = BLACK;
  ldns_rbtree_rotate_right(rbtree, child_parent);
 }
 else
 {
  sibling->right->color = BLACK;
  ldns_rbtree_rotate_left(rbtree, child_parent);
 }
}
