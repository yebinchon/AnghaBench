
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int dummy; } ;
struct roff_man {int next; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;


 int ROFFT_TAIL ;
 int ROFF_NEXT_CHILD ;
 struct roff_node* roff_node_alloc (struct roff_man*,int,int,int ,int) ;
 int roff_node_append (struct roff_man*,struct roff_node*) ;

void
mdoc_tail_alloc(struct roff_man *mdoc, int line, int pos, enum roff_tok tok)
{
 struct roff_node *p;

 p = roff_node_alloc(mdoc, line, pos, ROFFT_TAIL, tok);
 roff_node_append(mdoc, p);
 mdoc->next = ROFF_NEXT_CHILD;
}
