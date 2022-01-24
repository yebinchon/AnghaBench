#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symbol_search {struct symbol_search* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  compare_search_syms ; 
 int /*<<< orphan*/  FUNC0 (struct symbol_search**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol_search**) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static struct symbol_search *
FUNC3 (struct symbol_search *prevtail, int nfound)
{
  struct symbol_search **symbols, *symp, *old_next;
  int i;

  symbols = (struct symbol_search **) FUNC2 (sizeof (struct symbol_search *)
					       * nfound);
  symp = prevtail->next;
  for (i = 0; i < nfound; i++)
    {
      symbols[i] = symp;
      symp = symp->next;
    }
  /* Generally NULL.  */
  old_next = symp;

  FUNC0 (symbols, nfound, sizeof (struct symbol_search *),
	 compare_search_syms);

  symp = prevtail;
  for (i = 0; i < nfound; i++)
    {
      symp->next = symbols[i];
      symp = symp->next;
    }
  symp->next = old_next;

  FUNC1 (symbols);
  return symp;
}