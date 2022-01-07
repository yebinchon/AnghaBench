
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int * next; int prev; } ;
struct roff_man {int dummy; } ;


 int roff_node_append (struct roff_man*,struct roff_node*) ;
 int roff_node_unlink (struct roff_man*,struct roff_node*) ;

void
roff_node_relink(struct roff_man *man, struct roff_node *n)
{
 roff_node_unlink(man, n);
 n->prev = n->next = ((void*)0);
 roff_node_append(man, n);
}
