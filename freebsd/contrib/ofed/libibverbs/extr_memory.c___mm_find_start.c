
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_mem_node {uintptr_t start; uintptr_t end; struct ibv_mem_node* left; struct ibv_mem_node* right; } ;


 struct ibv_mem_node* mm_root ;

__attribute__((used)) static struct ibv_mem_node *__mm_find_start(uintptr_t start, uintptr_t end)
{
 struct ibv_mem_node *node = mm_root;

 while (node) {
  if (node->start <= start && node->end >= start)
   break;

  if (node->start < start)
   node = node->right;
  else
   node = node->left;
 }

 return node;
}
