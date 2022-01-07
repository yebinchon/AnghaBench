
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ tok; int flags; int type; struct roff_node* child; struct roff_node* next; } ;
struct roff_meta {int dummy; } ;
struct mpage {int dummy; } ;
struct mdoc_handler {int taboo; int mask; int (* fp ) (struct mpage*,struct roff_meta const*,struct roff_node const*) ;} ;


 scalar_t__ MDOC_Dd ;
 scalar_t__ MDOC_MAX ;





 scalar_t__ ROFF_MAX ;
 scalar_t__ TOKEN_NONE ;
 int assert (int) ;
 struct mdoc_handler* mdoc_handlers ;
 int putmdockey (struct mpage*,struct roff_node*,int ,int) ;
 int stub1 (struct mpage*,struct roff_meta const*,struct roff_node const*) ;

__attribute__((used)) static void
parse_mdoc(struct mpage *mpage, const struct roff_meta *meta,
 const struct roff_node *n)
{
 const struct mdoc_handler *handler;

 for (n = n->child; n != ((void*)0); n = n->next) {
  if (n->tok == TOKEN_NONE || n->tok < ROFF_MAX)
   continue;
  assert(n->tok >= MDOC_Dd && n->tok < MDOC_MAX);
  handler = mdoc_handlers + (n->tok - MDOC_Dd);
  if (n->flags & handler->taboo)
   continue;

  switch (n->type) {
  case 130:
  case 132:
  case 129:
  case 131:
  case 128:
   if (handler->fp != ((void*)0) &&
       (*handler->fp)(mpage, meta, n) == 0)
    break;
   if (handler->mask)
    putmdockey(mpage, n->child,
        handler->mask, handler->taboo);
   break;
  default:
   continue;
  }
  if (((void*)0) != n->child)
   parse_mdoc(mpage, meta, n);
 }
}
