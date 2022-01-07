
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct termp {int dummy; } ;
struct roff_node {scalar_t__ tok; scalar_t__ type; int flags; int * child; struct roff_node const* body; struct roff_node* prev; TYPE_3__* norm; struct roff_node* parent; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ comp; } ;
struct TYPE_4__ {scalar_t__ comp; } ;
struct TYPE_6__ {TYPE_2__ Bl; TYPE_1__ Bd; } ;


 scalar_t__ LIST_column ;
 scalar_t__ LIST_diag ;
 scalar_t__ LIST_item ;
 scalar_t__ MDOC_Bd ;
 scalar_t__ MDOC_Bl ;
 scalar_t__ MDOC_It ;
 scalar_t__ MDOC_Sh ;
 scalar_t__ MDOC_Ss ;
 int NODE_NOPRT ;
 scalar_t__ ROFFT_BLOCK ;
 scalar_t__ ROFFT_COMMENT ;
 scalar_t__ ROFFT_ROOT ;
 int assert (struct roff_node const*) ;
 int term_newln (struct termp*) ;
 int term_vspace (struct termp*) ;

__attribute__((used)) static void
print_bvspace(struct termp *p,
 const struct roff_node *bl,
 const struct roff_node *n)
{
 const struct roff_node *nn;

 assert(n);

 term_newln(p);

 if (MDOC_Bd == bl->tok && bl->norm->Bd.comp)
  return;
 if (MDOC_Bl == bl->tok && bl->norm->Bl.comp)
  return;



 nn = n;
 while (nn->prev != ((void*)0) &&
     (nn->prev->type == ROFFT_COMMENT ||
      nn->prev->flags & NODE_NOPRT))
  nn = nn->prev;
 while (nn->prev == ((void*)0)) {
  do {
   nn = nn->parent;
   if (nn->type == ROFFT_ROOT)
    return;
  } while (nn->type != ROFFT_BLOCK);
  if (nn->tok == MDOC_Sh || nn->tok == MDOC_Ss)
   return;
  if (nn->tok == MDOC_It &&
      nn->parent->parent->norm->Bl.type != LIST_item)
   break;
 }



 if (MDOC_Bl == bl->tok && LIST_column == bl->norm->Bl.type)
  if (n->prev && MDOC_It == n->prev->tok)
   return;



 if (MDOC_Bl == bl->tok && LIST_diag == bl->norm->Bl.type)
  if (n->prev && MDOC_It == n->prev->tok) {
   assert(n->prev->body);
   if (((void*)0) == n->prev->body->child)
    return;
  }

 term_vspace(p);
}
