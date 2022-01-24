#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ui_file {int dummy; } ;
struct TYPE_6__ {scalar_t__ list; } ;
struct TYPE_5__ {scalar_t__ list; } ;
struct partial_symtab {int number_of_dependencies; scalar_t__ n_global_syms; scalar_t__ n_static_syms; scalar_t__ statics_offset; TYPE_3__ static_psymbols; scalar_t__ globals_offset; TYPE_2__ global_psymbols; int /*<<< orphan*/  filename; struct partial_symtab** dependencies; int /*<<< orphan*/  texthigh; int /*<<< orphan*/  textlow; int /*<<< orphan*/  section_offsets; TYPE_1__* objfile; struct partial_symtab* read_symtab; struct partial_symtab* symtab; scalar_t__ readin; int /*<<< orphan*/  name; } ;
struct objfile {int number_of_dependencies; scalar_t__ n_global_syms; scalar_t__ n_static_syms; scalar_t__ statics_offset; TYPE_3__ static_psymbols; scalar_t__ globals_offset; TYPE_2__ global_psymbols; int /*<<< orphan*/  filename; struct objfile** dependencies; int /*<<< orphan*/  texthigh; int /*<<< orphan*/  textlow; int /*<<< orphan*/  section_offsets; TYPE_1__* objfile; struct objfile* read_symtab; struct objfile* symtab; scalar_t__ readin; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int num_sections; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct partial_symtab*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7 (struct objfile *objfile, struct partial_symtab *psymtab,
	      struct ui_file *outfile)
{
  int i;

  FUNC1 (outfile, "\nPartial symtab for source file %s ",
		    psymtab->filename);
  FUNC1 (outfile, "(object ");
  FUNC3 (psymtab, outfile);
  FUNC1 (outfile, ")\n\n");
  FUNC2 (outfile, "  Read from object file %s (",
		      objfile->name);
  FUNC3 (objfile, outfile);
  FUNC2 (outfile, ")\n");

  if (psymtab->readin)
    {
      FUNC1 (outfile,
			"  Full symtab was read (at ");
      FUNC3 (psymtab->symtab, outfile);
      FUNC1 (outfile, " by function at ");
      FUNC3 (psymtab->read_symtab, outfile);
      FUNC1 (outfile, ")\n");
    }

  FUNC1 (outfile, "  Relocate symbols by ");
  for (i = 0; i < psymtab->objfile->num_sections; ++i)
    {
      if (i != 0)
	FUNC1 (outfile, ", ");
      FUNC6 ("    ");
      FUNC4 (FUNC0 (psymtab->section_offsets, i),
			     1,
			     outfile);
    }
  FUNC1 (outfile, "\n");

  FUNC1 (outfile, "  Symbols cover text addresses ");
  FUNC4 (psymtab->textlow, 1, outfile);
  FUNC1 (outfile, "-");
  FUNC4 (psymtab->texthigh, 1, outfile);
  FUNC1 (outfile, "\n");
  FUNC1 (outfile, "  Depends on %d other partial symtabs.\n",
		    psymtab->number_of_dependencies);
  for (i = 0; i < psymtab->number_of_dependencies; i++)
    {
      FUNC1 (outfile, "    %d ", i);
      FUNC3 (psymtab->dependencies[i], outfile);
      FUNC1 (outfile, " %s\n",
			psymtab->dependencies[i]->filename);
    }
  if (psymtab->n_global_syms > 0)
    {
      FUNC5 (objfile->global_psymbols.list
			     + psymtab->globals_offset,
			     psymtab->n_global_syms, "Global", outfile);
    }
  if (psymtab->n_static_syms > 0)
    {
      FUNC5 (objfile->static_psymbols.list
			     + psymtab->statics_offset,
			     psymtab->n_static_syms, "Static", outfile);
    }
  FUNC1 (outfile, "\n");
}