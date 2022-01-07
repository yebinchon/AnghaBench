
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int dummy; } ;
struct roff_man {int next; } ;


 int ROFFT_ELEM ;
 int ROFF_NEXT_CHILD ;
 struct roff_node* roff_node_alloc (struct roff_man*,int,int,int ,int) ;
 int roff_node_append (struct roff_man*,struct roff_node*) ;

void
roff_elem_alloc(struct roff_man *man, int line, int pos, int tok)
{
 struct roff_node *n;

 n = roff_node_alloc(man, line, pos, ROFFT_ELEM, tok);
 roff_node_append(man, n);
 man->next = ROFF_NEXT_CHILD;
}
