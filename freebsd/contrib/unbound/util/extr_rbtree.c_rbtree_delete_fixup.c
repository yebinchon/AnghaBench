
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int rbtree_type ;
struct TYPE_7__ {scalar_t__ color; struct TYPE_7__* right; struct TYPE_7__* left; struct TYPE_7__* parent; } ;
typedef TYPE_1__ rbnode_type ;


 scalar_t__ BLACK ;
 TYPE_1__* RBTREE_NULL ;
 scalar_t__ RED ;
 int log_assert (int) ;
 int rbtree_rotate_left (int *,TYPE_1__*) ;
 int rbtree_rotate_right (int *,TYPE_1__*) ;

__attribute__((used)) static void rbtree_delete_fixup(rbtree_type* rbtree, rbnode_type* child,
 rbnode_type* child_parent)
{
 rbnode_type* sibling;
 int go_up = 1;


 if(child_parent->right == child) sibling = child_parent->left;
 else sibling = child_parent->right;

 while(go_up)
 {
  if(child_parent == RBTREE_NULL)
  {

   return;
  }

  if(sibling->color == RED)
  {
   child_parent->color = RED;
   sibling->color = BLACK;
   if(child_parent->right == child)
    rbtree_rotate_right(rbtree, child_parent);
   else rbtree_rotate_left(rbtree, child_parent);

   if(child_parent->right == child) sibling = child_parent->left;
   else sibling = child_parent->right;
  }

  if(child_parent->color == BLACK
   && sibling->color == BLACK
   && sibling->left->color == BLACK
   && sibling->right->color == BLACK)
  {
   if(sibling != RBTREE_NULL)
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

  if(sibling != RBTREE_NULL)
   sibling->color = RED;
  child_parent->color = BLACK;
  return;
 }
 log_assert(sibling != RBTREE_NULL);



 if(child_parent->right == child
  && sibling->color == BLACK
  && sibling->right->color == RED
  && sibling->left->color == BLACK)
 {
  sibling->color = RED;
  sibling->right->color = BLACK;
  rbtree_rotate_left(rbtree, sibling);

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
  rbtree_rotate_right(rbtree, sibling);

  if(child_parent->right == child) sibling = child_parent->left;
  else sibling = child_parent->right;
 }


 sibling->color = child_parent->color;
 child_parent->color = BLACK;
 if(child_parent->right == child)
 {
  log_assert(sibling->left->color == RED);
  sibling->left->color = BLACK;
  rbtree_rotate_right(rbtree, child_parent);
 }
 else
 {
  log_assert(sibling->right->color == RED);
  sibling->right->color = BLACK;
  rbtree_rotate_left(rbtree, child_parent);
 }
}
