
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_mem_node {uintptr_t start; scalar_t__ refcnt; } ;


 struct ibv_mem_node* __mm_find_start (uintptr_t,uintptr_t) ;
 struct ibv_mem_node* __mm_prev (struct ibv_mem_node*) ;
 struct ibv_mem_node* merge_ranges (struct ibv_mem_node*,struct ibv_mem_node*) ;
 struct ibv_mem_node* split_range (struct ibv_mem_node*,uintptr_t) ;

__attribute__((used)) static struct ibv_mem_node *get_start_node(uintptr_t start, uintptr_t end,
        int inc)
{
 struct ibv_mem_node *node, *tmp = ((void*)0);

 node = __mm_find_start(start, end);
 if (node->start < start)
  node = split_range(node, start);
 else {
  tmp = __mm_prev(node);
  if (tmp && tmp->refcnt == node->refcnt + inc)
   node = merge_ranges(node, tmp);
 }
 return node;
}
