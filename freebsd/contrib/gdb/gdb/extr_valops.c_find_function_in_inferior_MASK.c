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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ LOC_BLOCK ; 
 scalar_t__ FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 struct type* builtin_type_char ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct type* FUNC3 (struct type*) ; 
 struct minimal_symbol* FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct type* FUNC5 (struct type*) ; 
 struct symbol* FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  target_has_execution ; 
 struct value* FUNC7 (struct type*,int /*<<< orphan*/ ) ; 
 struct value* FUNC8 (struct symbol*,int /*<<< orphan*/ *) ; 

struct value *
FUNC9 (const char *name)
{
  struct symbol *sym;
  sym = FUNC6 (name, 0, VAR_DOMAIN, 0, NULL);
  if (sym != NULL)
    {
      if (FUNC0 (sym) != LOC_BLOCK)
	{
	  FUNC2 ("\"%s\" exists in this program but is not a function.",
		 name);
	}
      return FUNC8 (sym, NULL);
    }
  else
    {
      struct minimal_symbol *msymbol = FUNC4 (name, NULL, NULL);
      if (msymbol != NULL)
	{
	  struct type *type;
	  CORE_ADDR maddr;
	  type = FUNC5 (builtin_type_char);
	  type = FUNC3 (type);
	  type = FUNC5 (type);
	  maddr = FUNC1 (msymbol);
	  return FUNC7 (type, maddr);
	}
      else
	{
	  if (!target_has_execution)
	    FUNC2 ("evaluation of this expression requires the target program to be active");
	  else
	    FUNC2 ("evaluation of this expression requires the program to have a function \"%s\".", name);
	}
    }
}