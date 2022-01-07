
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {struct roff_node* child; } ;
struct roff_man {int dummy; } ;


 int roff_node_free (struct roff_node*) ;
 int roff_node_unlink (struct roff_man*,struct roff_node*) ;

void
roff_node_delete(struct roff_man *man, struct roff_node *n)
{

 while (n->child != ((void*)0))
  roff_node_delete(man, n->child);
 roff_node_unlink(man, n);
 roff_node_free(n);
}
