
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol_search {struct symbol_search* next; } ;


 int xfree (struct symbol_search*) ;

void
free_search_symbols (struct symbol_search *symbols)
{
  struct symbol_search *p;
  struct symbol_search *next;

  for (p = symbols; p != ((void*)0); p = next)
    {
      next = p->next;
      xfree (p);
    }
}
