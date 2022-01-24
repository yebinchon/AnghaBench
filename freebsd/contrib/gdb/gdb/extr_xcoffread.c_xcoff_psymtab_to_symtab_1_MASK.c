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
struct symloc {scalar_t__ numsyms; } ;
struct partial_symtab {int readin; int number_of_dependencies; scalar_t__ read_symtab_private; struct partial_symtab** dependencies; int /*<<< orphan*/  filename; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ info_verbose ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct partial_symtab*) ; 
 int /*<<< orphan*/  really_free_pendings ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10 (struct partial_symtab *pst)
{
  struct cleanup *old_chain;
  int i;

  if (!pst)
    return;

  if (pst->readin)
    {
      FUNC2
	(gdb_stderr, "Psymtab for %s already read in.  Shouldn't happen.\n",
	 pst->filename);
      return;
    }

  /* Read in all partial symtabs on which this one is dependent */
  for (i = 0; i < pst->number_of_dependencies; i++)
    if (!pst->dependencies[i]->readin)
      {
	/* Inform about additional files that need to be read in.  */
	if (info_verbose)
	  {
	    FUNC3 (" ", gdb_stdout);
	    FUNC9 ("");
	    FUNC3 ("and ", gdb_stdout);
	    FUNC9 ("");
	    FUNC6 ("%s...", pst->dependencies[i]->filename);
	    FUNC9 ("");	/* Flush output */
	    FUNC4 (gdb_stdout);
	  }
	FUNC10 (pst->dependencies[i]);
      }

  if (((struct symloc *) pst->read_symtab_private)->numsyms != 0)
    {
      /* Init stuff necessary for reading in symbols.  */
      FUNC8 ();
      FUNC0 ();
      old_chain = FUNC5 (really_free_pendings, 0);

      FUNC7 (pst);

      FUNC1 (old_chain);
    }

  pst->readin = 1;
}