
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct partial_symtab {int number_of_dependencies; struct partial_symtab** dependencies; struct partial_symtab* next; TYPE_1__* objfile; } ;
struct TYPE_2__ {struct partial_symtab* psymtabs; } ;



__attribute__((used)) static void
cashier_psymtab (struct partial_symtab *pst)
{
  struct partial_symtab *ps, *pprev = ((void*)0);
  int i;


  for (ps = pst->objfile->psymtabs; ps; ps = ps->next)
    {
      if (ps == pst)
 break;
      pprev = ps;
    }

  if (ps)
    {

      if (ps == pst->objfile->psymtabs)
 pst->objfile->psymtabs = ps->next;
      else
 pprev->next = ps->next;
    again:
      for (ps = pst->objfile->psymtabs; ps; ps = ps->next)
 {
   for (i = 0; i < ps->number_of_dependencies; i++)
     {
       if (ps->dependencies[i] == pst)
  {
    cashier_psymtab (ps);
    goto again;
  }
     }
 }
    }
}
