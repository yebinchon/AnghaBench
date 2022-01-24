#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  domain_enum ;
struct TYPE_2__ {scalar_t__ la_language; } ;

/* Variables and functions */
 int DMGL_ANSI ; 
 int DMGL_PARAMS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ case_sensitive_off ; 
 scalar_t__ case_sensitivity ; 
 char* FUNC1 (char const*,int) ; 
 TYPE_1__* current_language ; 
 scalar_t__ language_cplus ; 
 struct symbol* FUNC2 (char const*,char const*,struct block const*,int /*<<< orphan*/  const,int*,struct symtab**) ; 
 int FUNC3 (char const*) ; 
 char FUNC4 (char const) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

struct symbol *
FUNC6 (const char *name, const struct block *block,
	       const domain_enum domain, int *is_a_field_of_this,
	       struct symtab **symtab)
{
  char *demangled_name = NULL;
  const char *modified_name = NULL;
  const char *mangled_name = NULL;
  int needtofreename = 0;
  struct symbol *returnval;

  modified_name = name;

  /* If we are using C++ language, demangle the name before doing a lookup, so
     we can always binary search. */
  if (current_language->la_language == language_cplus)
    {
      demangled_name = FUNC1 (name, DMGL_ANSI | DMGL_PARAMS);
      if (demangled_name)
	{
	  mangled_name = name;
	  modified_name = demangled_name;
	  needtofreename = 1;
	}
    }

  if (case_sensitivity == case_sensitive_off)
    {
      char *copy;
      int len, i;

      len = FUNC3 (name);
      copy = (char *) FUNC0 (len + 1);
      for (i= 0; i < len; i++)
        copy[i] = FUNC4 (name[i]);
      copy[len] = 0;
      modified_name = copy;
    }

  returnval = FUNC2 (modified_name, mangled_name, block,
				 domain, is_a_field_of_this, symtab);
  if (needtofreename)
    FUNC5 (demangled_name);

  return returnval;	 
}