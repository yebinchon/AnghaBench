
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_mem_node {struct ibv_mem_node* parent; struct ibv_mem_node* left; struct ibv_mem_node* right; } ;


 struct ibv_mem_node* mm_root ;

__attribute__((used)) static void __mm_rotate_left(struct ibv_mem_node *node)
{
 struct ibv_mem_node *tmp;

 tmp = node->right;

 node->right = tmp->left;
 if (node->right)
  node->right->parent = node;

 if (node->parent) {
  if (node->parent->right == node)
   node->parent->right = tmp;
  else
   node->parent->left = tmp;
 } else
  mm_root = tmp;

 tmp->parent = node->parent;

 tmp->left = node;
 node->parent = tmp;
}
