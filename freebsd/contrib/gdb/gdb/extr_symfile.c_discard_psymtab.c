
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct partial_symtab {TYPE_1__* objfile; struct partial_symtab* next; } ;
struct TYPE_2__ {struct partial_symtab* free_psymtabs; struct partial_symtab* psymtabs; } ;



void
discard_psymtab (struct partial_symtab *pst)
{
  struct partial_symtab **prev_pst;
  prev_pst = &(pst->objfile->psymtabs);
  while ((*prev_pst) != pst)
    prev_pst = &((*prev_pst)->next);
  (*prev_pst) = pst->next;



  pst->next = pst->objfile->free_psymtabs;
  pst->objfile->free_psymtabs = pst;
}
