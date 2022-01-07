
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_mem_node {scalar_t__ start; int color; struct ibv_mem_node* right; struct ibv_mem_node* left; struct ibv_mem_node* parent; } ;


 int IBV_RED ;
 int __mm_add_rebalance (struct ibv_mem_node*) ;
 struct ibv_mem_node* mm_root ;

__attribute__((used)) static void __mm_add(struct ibv_mem_node *new)
{
 struct ibv_mem_node *node, *parent = ((void*)0);

 node = mm_root;
 while (node) {
  parent = node;
  if (node->start < new->start)
   node = node->right;
  else
   node = node->left;
 }

 if (parent->start < new->start)
  parent->right = new;
 else
  parent->left = new;

 new->parent = parent;
 new->left = ((void*)0);
 new->right = ((void*)0);

 new->color = IBV_RED;
 __mm_add_rebalance(new);
}
