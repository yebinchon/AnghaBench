
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ type; int tok; struct roff_node* parent; } ;
struct roff_man {struct roff_node* last; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;


 scalar_t__ ROFFT_ELEM ;
 int assert (int) ;
 int rew_last (struct roff_man*,struct roff_node*) ;

__attribute__((used)) static void
rew_elem(struct roff_man *mdoc, enum roff_tok tok)
{
 struct roff_node *n;

 n = mdoc->last;
 if (n->type != ROFFT_ELEM)
  n = n->parent;
 assert(n->type == ROFFT_ELEM);
 assert(tok == n->tok);
 rew_last(mdoc, n);
}
