#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct section_offsets {scalar_t__* offsets; } ;
struct section_addr_info {int dummy; } ;
struct objfile {int num_sections; struct section_offsets* section_offsets; int /*<<< orphan*/  sect_index_rodata; int /*<<< orphan*/  obfd; int /*<<< orphan*/  sect_index_bss; int /*<<< orphan*/  sect_index_data; int /*<<< orphan*/  sect_index_text; int /*<<< orphan*/  objfile_obstack; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct objfile *objfile, struct section_addr_info *addrs)
{
  asection *sect = NULL;
  int i;

  objfile->num_sections = FUNC1 (objfile->obfd);
  objfile->section_offsets = (struct section_offsets *)
    FUNC3 (&objfile->objfile_obstack, 
		   FUNC0 (objfile->num_sections));

  /* Initialize the section indexes for future use. */
  sect = FUNC2 (objfile->obfd, ".text");
  if (sect) 
    objfile->sect_index_text = sect->index;

  sect = FUNC2 (objfile->obfd, ".data");
  if (sect) 
    objfile->sect_index_data = sect->index;

  sect = FUNC2 (objfile->obfd, ".bss");
  if (sect) 
    objfile->sect_index_bss = sect->index;

  sect = FUNC2 (objfile->obfd, ".rodata");
  if (sect) 
    objfile->sect_index_rodata = sect->index;

  for (i = 0; i < objfile->num_sections; ++i)
    {
      /* syms_from_objfile kindly subtracts from addr the
	 bfd_section_vma of the .text section.  This strikes me as
	 wrong--whether the offset to be applied to symbol reading is
	 relative to the start address of the section depends on the
	 symbol format.  In any event, this whole "addr" concept is
	 pretty broken (it doesn't handle any section but .text
	 sensibly), so just ignore the addr parameter and use 0.
	 rs6000-nat.c will set the correct section offsets via
	 objfile_relocate.  */
	(objfile->section_offsets)->offsets[i] = 0;
    }
}