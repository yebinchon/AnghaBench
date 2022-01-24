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
struct vmap {scalar_t__ dvma; scalar_t__ dstart; scalar_t__ tvma; scalar_t__ tstart; int /*<<< orphan*/  loaded; struct objfile* objfile; } ;
struct section_offsets {scalar_t__* offsets; } ;
struct objfile {int num_sections; int /*<<< orphan*/  section_offsets; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (struct objfile*) ; 
 size_t FUNC2 (struct objfile*) ; 
 size_t FUNC3 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct objfile*,struct section_offsets*) ; 
 struct objfile* symfile_objfile ; 

__attribute__((used)) static void
FUNC7 (struct vmap *vp)
{
  struct objfile *objfile;
  struct section_offsets *new_offsets;
  int i;

  objfile = vp->objfile;
  if (objfile == NULL)
    {
      /* OK, it's not an objfile we opened ourselves.
         Currently, that can only happen with the exec file, so
         relocate the symbols for the symfile.  */
      if (symfile_objfile == NULL)
	return;
      objfile = symfile_objfile;
    }
  else if (!vp->loaded)
    /* If symbols are not yet loaded, offsets are not yet valid. */
    return;

  new_offsets =
    (struct section_offsets *)
    FUNC5 (FUNC4 (objfile->num_sections));

  for (i = 0; i < objfile->num_sections; ++i)
    new_offsets->offsets[i] = FUNC0 (objfile->section_offsets, i);

  /* The symbols in the object file are linked to the VMA of the section,
     relocate them VMA relative.  */
  new_offsets->offsets[FUNC3 (objfile)] = vp->tstart - vp->tvma;
  new_offsets->offsets[FUNC2 (objfile)] = vp->dstart - vp->dvma;
  new_offsets->offsets[FUNC1 (objfile)] = vp->dstart - vp->dvma;

  FUNC6 (objfile, new_offsets);
}