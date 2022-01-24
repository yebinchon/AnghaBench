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
struct objfile {int /*<<< orphan*/ * obj_private; int /*<<< orphan*/  section_offsets; scalar_t__ export_list_size; int /*<<< orphan*/ * export_list; int /*<<< orphan*/  name; int /*<<< orphan*/ * obfd; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct objfile*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC4 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct objfile*) ; 
 struct cleanup* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct objfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct objfile*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (struct objfile *objfile, int mainline)
{
  bfd *abfd = objfile->obfd;
  struct cleanup *back_to;

  FUNC1 (FUNC10 (objfile->name));

  FUNC5 ();
  back_to = FUNC7 ();

  /* Read in the import list and the export list.  Currently
     the export list isn't used; the import list is used in
     hp-symtab-read.c to handle static vars declared in other
     shared libraries. */
  FUNC4 (objfile);
#if 0				/* Export symbols not used today 1997-08-05 */
  init_export_symbols (objfile);
#else
  objfile->export_list = NULL;
  objfile->export_list_size = 0;
#endif

  /* Process the normal SOM symbol table first. 
     This reads in the DNTT and string table, but doesn't
     actually scan the DNTT. It does scan the linker symbol
     table and thus build up a "minimal symbol table". */

  FUNC8 (abfd, objfile, objfile->section_offsets);

  /* Install any minimal symbols that have been collected as the current
     minimal symbols for this objfile. 
     Further symbol-reading is done incrementally, file-by-file,
     in a step known as "psymtab-to-symtab" expansion. hp-symtab-read.c
     contains the code to do the actual DNTT scanning and symtab building. */
  FUNC6 (objfile);
  FUNC0 (back_to);

  /* Now read information from the stabs debug sections.
     This is a no-op for SOM.
     Perhaps it is intended for some kind of mixed STABS/SOM
     situation? */
  FUNC9 (objfile, mainline,
			   "$GDB_SYMBOLS$", "$GDB_STRINGS$", "$TEXT$");

  /* Now read the native debug information. 
     This builds the psymtab. This used to be done via a scan of
     the DNTT, but is now done via the PXDB-built quick-lookup tables
     together with a scan of the GNTT. See hp-psymtab-read.c. */
  FUNC2 (objfile, mainline);

  /* Force hppa-tdep.c to re-read the unwind descriptors.  */
  objfile->obj_private = NULL;
}