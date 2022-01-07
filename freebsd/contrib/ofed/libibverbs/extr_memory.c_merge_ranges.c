
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_mem_node {int refcnt; int end; } ;


 int __mm_remove (struct ibv_mem_node*) ;

__attribute__((used)) static struct ibv_mem_node *merge_ranges(struct ibv_mem_node *node,
      struct ibv_mem_node *prev)
{
 prev->end = node->end;
 prev->refcnt = node->refcnt;
 __mm_remove(node);

 return prev;
}
