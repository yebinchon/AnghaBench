
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* root; } ;
typedef TYPE_1__ ldns_rbtree_t ;
struct TYPE_10__ {scalar_t__ color; struct TYPE_10__* parent; struct TYPE_10__* left; struct TYPE_10__* right; } ;
typedef TYPE_2__ ldns_rbnode_t ;


 void* BLACK ;
 scalar_t__ RED ;
 int ldns_rbtree_rotate_left (TYPE_1__*,TYPE_2__*) ;
 int ldns_rbtree_rotate_right (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void
ldns_rbtree_insert_fixup(ldns_rbtree_t *rbtree, ldns_rbnode_t *node)
{
 ldns_rbnode_t *uncle;


 while (node != rbtree->root && node->parent->color == RED) {

  if (node->parent == node->parent->parent->left) {
   uncle = node->parent->parent->right;


   if (uncle->color == RED) {

    node->parent->color = BLACK;
    uncle->color = BLACK;


    node->parent->parent->color = RED;


    node = node->parent->parent;
   } else {

    if (node == node->parent->right) {
     node = node->parent;
     ldns_rbtree_rotate_left(rbtree, node);
    }

    node->parent->color = BLACK;
    node->parent->parent->color = RED;
    ldns_rbtree_rotate_right(rbtree, node->parent->parent);
   }
  } else {
   uncle = node->parent->parent->left;


   if (uncle->color == RED) {

    node->parent->color = BLACK;
    uncle->color = BLACK;


    node->parent->parent->color = RED;


    node = node->parent->parent;
   } else {

    if (node == node->parent->left) {
     node = node->parent;
     ldns_rbtree_rotate_right(rbtree, node);
    }

    node->parent->color = BLACK;
    node->parent->parent->color = RED;
    ldns_rbtree_rotate_left(rbtree, node->parent->parent);
   }
  }
 }
 rbtree->root->color = BLACK;
}
