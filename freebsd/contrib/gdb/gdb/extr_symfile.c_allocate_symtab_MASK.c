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
struct symtab {struct symtab* next; struct objfile* objfile; void* debugformat; int /*<<< orphan*/  language; int /*<<< orphan*/ * fullname; void* filename; } ;
struct objfile {struct symtab* symtabs; int /*<<< orphan*/  objfile_obstack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symtab*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct symtab*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (char*) ; 

struct symtab *
FUNC6 (char *filename, struct objfile *objfile)
{
  struct symtab *symtab;

  symtab = (struct symtab *)
    FUNC4 (&objfile->objfile_obstack, sizeof (struct symtab));
  FUNC2 (symtab, 0, sizeof (*symtab));
  symtab->filename = FUNC3 (filename, FUNC5 (filename),
				   &objfile->objfile_obstack);
  symtab->fullname = NULL;
  symtab->language = FUNC1 (filename);
  symtab->debugformat = FUNC3 ("unknown", 7,
				      &objfile->objfile_obstack);

  /* Hook it to the objfile it comes from */

  symtab->objfile = objfile;
  symtab->next = objfile->symtabs;
  objfile->symtabs = symtab;

  /* FIXME: This should go away.  It is only defined for the Z8000,
     and the Z8000 definition of this macro doesn't have anything to
     do with the now-nonexistent EXTRA_SYMTAB_INFO macro, it's just
     here for convenience.  */
#ifdef INIT_EXTRA_SYMTAB_INFO
  INIT_EXTRA_SYMTAB_INFO (symtab);
#endif

  return (symtab);
}