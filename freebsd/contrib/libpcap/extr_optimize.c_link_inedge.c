
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge {struct edge* next; } ;
struct block {struct edge* in_edges; } ;



__attribute__((used)) static inline void
link_inedge(struct edge *parent, struct block *child)
{
 parent->next = child->in_edges;
 child->in_edges = parent;
}
