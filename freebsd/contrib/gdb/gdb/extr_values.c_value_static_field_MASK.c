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
struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  FUNC3 (struct type*,int) ; 
 scalar_t__ FUNC4 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,int) ; 
 char* FUNC6 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct value*) ; 
 scalar_t__ FUNC9 (struct value*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 struct minimal_symbol* FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct symbol* FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ lval_memory ; 
 struct value* FUNC12 (struct symbol*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct symbol*) ; 
 struct value* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

struct value *
FUNC16 (struct type *type, int fieldno)
{
  struct value *retval;

  if (FUNC4 (type, fieldno))
    {
      retval = FUNC14 (FUNC7 (type, fieldno),
			 FUNC5 (type, fieldno),
			 NULL);
    }
  else
    {
      char *phys_name = FUNC6 (type, fieldno);
      struct symbol *sym = FUNC11 (phys_name, 0, VAR_DOMAIN, 0, NULL);
      if (sym == NULL)
	{
	  /* With some compilers, e.g. HP aCC, static data members are reported
	     as non-debuggable symbols */
	  struct minimal_symbol *msym = FUNC10 (phys_name, NULL, NULL);
	  if (!msym)
	    return NULL;
	  else
	    {
	      retval = FUNC14 (FUNC7 (type, fieldno),
				 FUNC2 (msym),
				 FUNC1 (msym));
	    }
	}
      else
	{
	  /* SYM should never have a SYMBOL_CLASS which will require
	     read_var_value to use the FRAME parameter.  */
	  if (FUNC13 (sym))
	    FUNC15 ("static field's value depends on the current "
		     "frame - bad debug info?");
	  retval = FUNC12 (sym, NULL);
 	}
      if (retval && FUNC9 (retval) == lval_memory)
	FUNC0 (FUNC3 (type, fieldno),
			    FUNC8 (retval));
    }
  return retval;
}