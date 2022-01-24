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
struct symloc {int first_symnum; } ;
struct partial_symtab {char* read_symtab_private; int /*<<< orphan*/  read_symtab; } ;
struct partial_symbol {int dummy; } ;
struct objfile {int /*<<< orphan*/  objfile_obstack; int /*<<< orphan*/  section_offsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  psymtab_language ; 
 struct partial_symtab* FUNC2 (struct objfile*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct partial_symbol**,struct partial_symbol**) ; 
 int /*<<< orphan*/  xcoff_psymtab_to_symtab ; 

__attribute__((used)) static struct partial_symtab *
FUNC3 (struct objfile *objfile, char *filename, int first_symnum,
		     struct partial_symbol **global_syms,
		     struct partial_symbol **static_syms)
{
  struct partial_symtab *result =
  FUNC2 (objfile, objfile->section_offsets,
			filename,
			/* We fill in textlow later.  */
			0,
			global_syms, static_syms);

  result->read_symtab_private = (char *)
    FUNC1 (&objfile->objfile_obstack, sizeof (struct symloc));
  ((struct symloc *) result->read_symtab_private)->first_symnum = first_symnum;
  result->read_symtab = xcoff_psymtab_to_symtab;

  /* Deduce the source language from the filename for this psymtab. */
  psymtab_language = FUNC0 (filename);

  return result;
}