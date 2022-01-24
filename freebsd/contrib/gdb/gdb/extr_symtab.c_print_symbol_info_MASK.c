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
struct symtab {char* filename; } ;
struct symbol {int dummy; } ;
typedef  scalar_t__ domain_enum ;

/* Variables and functions */
 scalar_t__ LOC_TYPEDEF ; 
 int STATIC_BLOCK ; 
 scalar_t__ STRUCT_DOMAIN ; 
 scalar_t__ FUNC0 (struct symbol*) ; 
 scalar_t__ FUNC1 (struct symbol*) ; 
 char* FUNC2 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC3 (struct symbol*) ; 
 scalar_t__ TYPES_DOMAIN ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct symbol*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (domain_enum kind, struct symtab *s, struct symbol *sym,
		   int block, char *last)
{
  if (last == NULL || FUNC6 (last, s->filename) != 0)
    {
      FUNC4 ("\nFile ", gdb_stdout);
      FUNC4 (s->filename, gdb_stdout);
      FUNC4 (":\n", gdb_stdout);
    }

  if (kind != TYPES_DOMAIN && block == STATIC_BLOCK)
    FUNC5 ("static ");

  /* Typedef that is not a C++ class */
  if (kind == TYPES_DOMAIN
      && FUNC1 (sym) != STRUCT_DOMAIN)
    FUNC8 (FUNC3 (sym), sym, gdb_stdout);
  /* variable, func, or typedef-that-is-c++-class */
  else if (kind < TYPES_DOMAIN ||
	   (kind == TYPES_DOMAIN &&
	    FUNC1 (sym) == STRUCT_DOMAIN))
    {
      FUNC7 (FUNC3 (sym),
		  (FUNC0 (sym) == LOC_TYPEDEF
		   ? "" : FUNC2 (sym)),
		  gdb_stdout, 0);

      FUNC5 (";\n");
    }
}