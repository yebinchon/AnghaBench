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
struct symtab {struct symtab* objfile; int /*<<< orphan*/  filename; struct symtab* next; struct symtab* symtabs; struct symtab* psymtabs; int /*<<< orphan*/  minimal_symbol_count; struct symtab* obfd; int /*<<< orphan*/  name; } ;
struct partial_symtab {struct partial_symtab* objfile; int /*<<< orphan*/  filename; struct partial_symtab* next; struct partial_symtab* symtabs; struct partial_symtab* psymtabs; int /*<<< orphan*/  minimal_symbol_count; struct partial_symtab* obfd; int /*<<< orphan*/  name; } ;
struct objfile {struct objfile* objfile; int /*<<< orphan*/  filename; struct objfile* next; struct objfile* symtabs; struct objfile* psymtabs; int /*<<< orphan*/  minimal_symbol_count; struct objfile* obfd; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symtab*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3 (struct objfile *objfile)
{
  struct symtab *symtab;
  struct partial_symtab *psymtab;

  FUNC1 ("\nObject file %s:  ", objfile->name);
  FUNC1 ("Objfile at ");
  FUNC0 (objfile, gdb_stdout);
  FUNC1 (", bfd at ");
  FUNC0 (objfile->obfd, gdb_stdout);
  FUNC1 (", %d minsyms\n\n",
		   objfile->minimal_symbol_count);

  if (objfile->psymtabs)
    {
      FUNC1 ("Psymtabs:\n");
      for (psymtab = objfile->psymtabs;
	   psymtab != NULL;
	   psymtab = psymtab->next)
	{
	  FUNC1 ("%s at ",
			   psymtab->filename);
	  FUNC0 (psymtab, gdb_stdout);
	  FUNC1 (", ");
	  if (psymtab->objfile != objfile)
	    {
	      FUNC1 ("NOT ON CHAIN!  ");
	    }
	  FUNC2 ("  ");
	}
      FUNC1 ("\n\n");
    }

  if (objfile->symtabs)
    {
      FUNC1 ("Symtabs:\n");
      for (symtab = objfile->symtabs;
	   symtab != NULL;
	   symtab = symtab->next)
	{
	  FUNC1 ("%s at ", symtab->filename);
	  FUNC0 (symtab, gdb_stdout);
	  FUNC1 (", ");
	  if (symtab->objfile != objfile)
	    {
	      FUNC1 ("NOT ON CHAIN!  ");
	    }
	  FUNC2 ("  ");
	}
      FUNC1 ("\n\n");
    }
}