
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct termp {size_t defindent; int flags; scalar_t__ synopsisonly; int defrmargin; int maxrmargin; TYPE_1__* tcol; } ;
struct roff_node {scalar_t__ tok; scalar_t__ sec; scalar_t__ type; int flags; struct roff_node* next; TYPE_4__* child; } ;
struct roff_meta {TYPE_2__* first; } ;
struct TYPE_8__ {TYPE_3__* next; } ;
struct TYPE_7__ {struct roff_node* child; } ;
struct TYPE_6__ {struct roff_node* child; } ;
struct TYPE_5__ {int rmargin; } ;


 scalar_t__ MDOC_Sh ;
 int NODE_NOPRT ;
 scalar_t__ ROFFT_COMMENT ;
 scalar_t__ SEC_NAME ;
 scalar_t__ SEC_SYNOPSIS ;
 int TERMP_NOSPACE ;
 int print_mdoc_foot ;
 int print_mdoc_head ;
 int print_mdoc_nodelist (struct termp*,int *,struct roff_meta const*,struct roff_node*) ;
 int term_begin (struct termp*,int ,int ,struct roff_meta const*) ;
 int term_end (struct termp*) ;
 int term_newln (struct termp*) ;
 int term_tab_set (struct termp*,char*) ;
 int term_vspace (struct termp*) ;

void
terminal_mdoc(void *arg, const struct roff_meta *mdoc)
{
 struct roff_node *n, *nn;
 struct termp *p;
 size_t save_defindent;

 p = (struct termp *)arg;
 p->tcol->rmargin = p->maxrmargin = p->defrmargin;
 term_tab_set(p, ((void*)0));
 term_tab_set(p, "T");
 term_tab_set(p, ".5i");

 n = mdoc->first->child;
 if (p->synopsisonly) {
  for (nn = ((void*)0); n != ((void*)0); n = n->next) {
   if (n->tok != MDOC_Sh)
    continue;
   if (n->sec == SEC_SYNOPSIS)
    break;
   if (nn == ((void*)0) && n->sec == SEC_NAME)
    nn = n;
  }
  if (n == ((void*)0))
   n = nn;
  p->flags |= TERMP_NOSPACE;
  if (n != ((void*)0) && (n = n->child->next->child) != ((void*)0))
   print_mdoc_nodelist(p, ((void*)0), mdoc, n);
  term_newln(p);
 } else {
  save_defindent = p->defindent;
  if (p->defindent == 0)
   p->defindent = 5;
  term_begin(p, print_mdoc_head, print_mdoc_foot, mdoc);
  while (n != ((void*)0) &&
      (n->type == ROFFT_COMMENT ||
       n->flags & NODE_NOPRT))
   n = n->next;
  if (n != ((void*)0)) {
   if (n->tok != MDOC_Sh)
    term_vspace(p);
   print_mdoc_nodelist(p, ((void*)0), mdoc, n);
  }
  term_end(p);
  p->defindent = save_defindent;
 }
}
