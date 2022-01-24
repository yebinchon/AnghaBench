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
struct symtab_and_line {scalar_t__ pc; scalar_t__ end; } ;
struct symbol {int dummy; } ;
typedef  int /*<<< orphan*/  asection ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_START_OFFSET ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC4 (struct symbol*) ; 
 struct symtab_and_line FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

struct symtab_and_line
FUNC11 (struct symbol *sym, int funfirstline)
{
  CORE_ADDR pc;
  struct symtab_and_line sal;

  pc = FUNC1 (FUNC4 (sym));
  FUNC6 (sym, NULL);
  if (funfirstline)
    {				/* skip "first line" of function (which is actually its prologue) */
      asection *section = FUNC3 (sym);
      /* If function is in an unmapped overlay, use its unmapped LMA
         address, so that SKIP_PROLOGUE has something unique to work on */
      if (FUNC10 (section) &&
	  !FUNC9 (section))
	pc = FUNC8 (pc, section);

      pc += FUNCTION_START_OFFSET;
      pc = FUNC2 (pc);

      /* For overlays, map pc back into its mapped VMA range */
      pc = FUNC7 (pc, section);
    }
  sal = FUNC5 (pc, FUNC3 (sym), 0);

  /* Check if SKIP_PROLOGUE left us in mid-line, and the next
     line is still part of the same function.  */
  if (sal.pc != pc
      && FUNC1 (FUNC4 (sym)) <= sal.end
      && sal.end < FUNC0 (FUNC4 (sym)))
    {
      /* First pc of next line */
      pc = sal.end;
      /* Recalculate the line number (might not be N+1).  */
      sal = FUNC5 (pc, FUNC3 (sym), 0);
    }
  sal.pc = pc;

  return sal;
}