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
struct symbol {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block*) ; 
 struct block* FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 scalar_t__ deprecated_selected_frame ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct symbol* FUNC4 (scalar_t__) ; 
 struct symbol* FUNC5 (struct block*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct value* FUNC6 (struct symbol*,scalar_t__) ; 

struct value *
FUNC7 (const char *name, int complain)
{
  struct symbol *func, *sym;
  struct block *b;
  struct value * ret;

  if (deprecated_selected_frame == 0)
    {
      if (complain)
	FUNC3 ("no frame selected");
      else
	return 0;
    }

  func = FUNC4 (deprecated_selected_frame);
  if (!func)
    {
      if (complain)
	FUNC3 ("no `%s' in nameless context", name);
      else
	return 0;
    }

  b = FUNC1 (func);
  if (FUNC2 (FUNC0 (b)))
    {
      if (complain)
	FUNC3 ("no args, no `%s'", name);
      else
	return 0;
    }

  /* Calling lookup_block_symbol is necessary to get the LOC_REGISTER
     symbol instead of the LOC_ARG one (if both exist).  */
  sym = FUNC5 (b, name, NULL, VAR_DOMAIN);
  if (sym == NULL)
    {
      if (complain)
	FUNC3 ("current stack frame does not contain a variable named `%s'", name);
      else
	return NULL;
    }

  ret = FUNC6 (sym, deprecated_selected_frame);
  if (ret == 0 && complain)
    FUNC3 ("`%s' argument unreadable", name);
  return ret;
}