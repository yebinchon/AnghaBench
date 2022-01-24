#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct partial_symtab {scalar_t__ textlow; int globals_offset; int n_global_syms; int statics_offset; int n_static_syms; TYPE_3__* objfile; } ;
struct partial_symbol {int dummy; } ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_5__ {struct partial_symbol** list; } ;
struct TYPE_4__ {struct partial_symbol** list; } ;
struct TYPE_6__ {TYPE_2__ static_psymbols; TYPE_1__ global_psymbols; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ LOC_BLOCK ; 
 int /*<<< orphan*/ * FUNC0 (struct partial_symbol*) ; 
 scalar_t__ FUNC1 (struct partial_symbol*) ; 
 scalar_t__ FUNC2 (struct partial_symbol*) ; 
 scalar_t__ FUNC3 (struct partial_symbol*) ; 
 scalar_t__ VAR_DOMAIN ; 
 struct partial_symtab* FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct partial_symbol*,TYPE_3__*) ; 

struct partial_symbol *
FUNC6 (struct partial_symtab *psymtab, CORE_ADDR pc,
		      asection *section)
{
  struct partial_symbol *best = NULL, *p, **pp;
  CORE_ADDR best_pc;

  if (!psymtab)
    psymtab = FUNC4 (pc, section);
  if (!psymtab)
    return 0;

  /* Cope with programs that start at address 0 */
  best_pc = (psymtab->textlow != 0) ? psymtab->textlow - 1 : 0;

  /* Search the global symbols as well as the static symbols, so that
     find_pc_partial_function doesn't use a minimal symbol and thus
     cache a bad endaddr.  */
  for (pp = psymtab->objfile->global_psymbols.list + psymtab->globals_offset;
    (pp - (psymtab->objfile->global_psymbols.list + psymtab->globals_offset)
     < psymtab->n_global_syms);
       pp++)
    {
      p = *pp;
      if (FUNC2 (p) == VAR_DOMAIN
	  && FUNC1 (p) == LOC_BLOCK
	  && pc >= FUNC3 (p)
	  && (FUNC3 (p) > best_pc
	      || (psymtab->textlow == 0
		  && best_pc == 0 && FUNC3 (p) == 0)))
	{
	  if (section)		/* match on a specific section */
	    {
	      FUNC5 (p, psymtab->objfile);
	      if (FUNC0 (p) != section)
		continue;
	    }
	  best_pc = FUNC3 (p);
	  best = p;
	}
    }

  for (pp = psymtab->objfile->static_psymbols.list + psymtab->statics_offset;
    (pp - (psymtab->objfile->static_psymbols.list + psymtab->statics_offset)
     < psymtab->n_static_syms);
       pp++)
    {
      p = *pp;
      if (FUNC2 (p) == VAR_DOMAIN
	  && FUNC1 (p) == LOC_BLOCK
	  && pc >= FUNC3 (p)
	  && (FUNC3 (p) > best_pc
	      || (psymtab->textlow == 0
		  && best_pc == 0 && FUNC3 (p) == 0)))
	{
	  if (section)		/* match on a specific section */
	    {
	      FUNC5 (p, psymtab->objfile);
	      if (FUNC0 (p) != section)
		continue;
	    }
	  best_pc = FUNC3 (p);
	  best = p;
	}
    }

  return best;
}