
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol_search {struct symbol_search* next; } ;


 int compare_search_syms ;
 int qsort (struct symbol_search**,int,int,int ) ;
 int xfree (struct symbol_search**) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct symbol_search *
sort_search_symbols (struct symbol_search *prevtail, int nfound)
{
  struct symbol_search **symbols, *symp, *old_next;
  int i;

  symbols = (struct symbol_search **) xmalloc (sizeof (struct symbol_search *)
            * nfound);
  symp = prevtail->next;
  for (i = 0; i < nfound; i++)
    {
      symbols[i] = symp;
      symp = symp->next;
    }

  old_next = symp;

  qsort (symbols, nfound, sizeof (struct symbol_search *),
  compare_search_syms);

  symp = prevtail;
  for (i = 0; i < nfound; i++)
    {
      symp->next = symbols[i];
      symp = symp->next;
    }
  symp->next = old_next;

  xfree (symbols);
  return symp;
}
