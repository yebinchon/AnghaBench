
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {int flags; scalar_t__ type; size_t tok; struct roff_node* parent; } ;
struct roff_man {struct roff_node* last; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
struct TYPE_2__ {int flags; } ;


 int MANDOCERR_BLK_NEST ;
 int MDOC_EXPLICIT ;
 int NODE_ENDED ;
 int NODE_VALID ;
 scalar_t__ ROFFT_BLOCK ;
 scalar_t__ ROFFT_HEAD ;
 int break_intermediate (struct roff_node*,struct roff_node*) ;
 int mandoc_msg (int ,int,int,char*,int ,int ) ;
 int mdoc_endbody_alloc (struct roff_man*,int,int,int,struct roff_node*) ;
 TYPE_1__* mdoc_macro (size_t) ;
 int * roff_name ;

__attribute__((used)) static int
find_pending(struct roff_man *mdoc, enum roff_tok tok, int line, int ppos,
 struct roff_node *target)
{
 struct roff_node *n;
 int irc;

 if (target->flags & NODE_VALID)
  return 0;

 irc = 0;
 for (n = mdoc->last; n != ((void*)0) && n != target; n = n->parent) {
  if (n->flags & NODE_ENDED)
   continue;
  if (n->type == ROFFT_BLOCK &&
      mdoc_macro(n->tok)->flags & MDOC_EXPLICIT) {
   irc = 1;
   break_intermediate(mdoc->last, target);
   if (target->type == ROFFT_HEAD)
    target->flags |= NODE_ENDED;
   else if ( ! (target->flags & NODE_ENDED)) {
    mandoc_msg(MANDOCERR_BLK_NEST,
        line, ppos, "%s breaks %s",
        roff_name[tok], roff_name[n->tok]);
    mdoc_endbody_alloc(mdoc, line, ppos,
        tok, target);
   }
  }
 }
 return irc;
}
