
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct roff_node {int type; int flags; struct roff_node const* parent; int tok; int pos; int line; } const roff_node ;
struct roff_man {struct roff_node const* last; int flags; } ;


 int MDOC_Ss ;
 int NODE_BROKEN ;
 int NODE_ENDED ;


 int ROFF_NONOFILL ;
 int rew_last (struct roff_man*,struct roff_node const*) ;
 int roff_body_alloc (struct roff_man*,int ,int ,int ) ;

__attribute__((used)) static void
rew_pending(struct roff_man *mdoc, const struct roff_node *n)
{

 for (;;) {
  rew_last(mdoc, n);

  if (mdoc->last == n) {
   switch (n->type) {
   case 128:
    roff_body_alloc(mdoc, n->line, n->pos,
        n->tok);
    if (n->tok == MDOC_Ss)
     mdoc->flags &= ~ROFF_NONOFILL;
    break;
   case 129:
    break;
   default:
    return;
   }
   if ( ! (n->flags & NODE_BROKEN))
    return;
  } else
   n = mdoc->last;

  for (;;) {
   if ((n = n->parent) == ((void*)0))
    return;

   if (n->type == 129 ||
       n->type == 128) {
    if (n->flags & NODE_ENDED)
     break;
    else
     return;
   }
  }
 }
}
