
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_mem_node {uintptr_t start; uintptr_t end; int refcnt; } ;


 int __mm_add (struct ibv_mem_node*) ;
 struct ibv_mem_node* malloc (int) ;

__attribute__((used)) static struct ibv_mem_node *split_range(struct ibv_mem_node *node,
     uintptr_t cut_line)
{
 struct ibv_mem_node *new_node = ((void*)0);

 new_node = malloc(sizeof *new_node);
 if (!new_node)
  return ((void*)0);
 new_node->start = cut_line;
 new_node->end = node->end;
 new_node->refcnt = node->refcnt;
 node->end = cut_line - 1;
 __mm_add(new_node);

 return new_node;
}
