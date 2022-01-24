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
struct symbol_search {int /*<<< orphan*/ * msymbol; TYPE_1__* symtab; int /*<<< orphan*/  block; int /*<<< orphan*/ * symbol; struct symbol_search* next; } ;
struct cleanup {int dummy; } ;
struct TYPE_2__ {char* filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNCTIONS_DOMAIN ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cleanup*) ; 
 struct cleanup* FUNC5 (struct symbol_search*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,struct symbol_search**) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12 (char *regexp, int from_tty)
{
  struct symbol_search *ss;
  struct symbol_search *p;
  struct cleanup *old_chain;

  FUNC8 (regexp, FUNCTIONS_DOMAIN, 0, (char **) NULL, &ss);
  old_chain = FUNC5 (ss);

  for (p = ss; p != NULL; p = p->next)
    {
      if (p->msymbol == NULL)
	{
	  char *string = FUNC2 (FUNC11 (p->symtab->filename)
				 + FUNC11 (FUNC0 (p->symbol))
				 + 4);
	  FUNC10 (string, p->symtab->filename);
	  FUNC9 (string, ":'");
	  FUNC9 (string, FUNC0 (p->symbol));
	  FUNC9 (string, "'");
	  FUNC3 (string, from_tty);
	  FUNC6 (FUNCTIONS_DOMAIN,
			     p->symtab,
			     p->symbol,
			     p->block,
			     p->symtab->filename);
	}
      else
	{
	  FUNC3 (FUNC0 (p->msymbol), from_tty);
	  FUNC7 ("<function, no debug info> %s;\n",
			   FUNC1 (p->msymbol));
	}
    }

  FUNC4 (old_chain);
}