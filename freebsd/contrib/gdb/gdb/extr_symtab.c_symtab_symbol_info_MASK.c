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
struct symbol_search {TYPE_1__* symtab; int /*<<< orphan*/  block; int /*<<< orphan*/  symbol; int /*<<< orphan*/ * msymbol; struct symbol_search* next; } ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ domain_enum ;
struct TYPE_2__ {char* filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUIT ; 
 scalar_t__ VARIABLES_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 struct cleanup* FUNC1 (struct symbol_search*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ,char**,struct symbol_search**) ; 

__attribute__((used)) static void
FUNC6 (char *regexp, domain_enum kind, int from_tty)
{
  static char *classnames[]
  =
  {"variable", "function", "type", "method"};
  struct symbol_search *symbols;
  struct symbol_search *p;
  struct cleanup *old_chain;
  char *last_filename = NULL;
  int first = 1;

  /* must make sure that if we're interrupted, symbols gets freed */
  FUNC5 (regexp, kind, 0, (char **) NULL, &symbols);
  old_chain = FUNC1 (symbols);

  FUNC4 (regexp
		   ? "All %ss matching regular expression \"%s\":\n"
		   : "All defined %ss:\n",
		   classnames[(int) (kind - VARIABLES_DOMAIN)], regexp);

  for (p = symbols; p != NULL; p = p->next)
    {
      QUIT;

      if (p->msymbol != NULL)
	{
	  if (first)
	    {
	      FUNC4 ("\nNon-debugging symbols:\n");
	      first = 0;
	    }
	  FUNC2 (p->msymbol);
	}
      else
	{
	  FUNC3 (kind,
			     p->symtab,
			     p->symbol,
			     p->block,
			     last_filename);
	  last_filename = p->symtab->filename;
	}
    }

  FUNC0 (old_chain);
}