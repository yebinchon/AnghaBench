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
struct section_offsets {void** offsets; } ;
struct objfile {int /*<<< orphan*/  obfd; int /*<<< orphan*/  num_sections; int /*<<< orphan*/  section_offsets; } ;
struct find_sect_args {void* text_start; void* data_start; void* bss_start; } ;
typedef  void* CORE_ADDR ;

/* Variables and functions */
 size_t FUNC0 (struct objfile*) ; 
 size_t FUNC1 (struct objfile*) ; 
 size_t FUNC2 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct find_sect_args*) ; 
 int /*<<< orphan*/  find_sect ; 
 int /*<<< orphan*/  FUNC6 (struct section_offsets*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct objfile*,struct section_offsets*) ; 
 int /*<<< orphan*/  FUNC8 (struct objfile*) ; 
 struct objfile* FUNC9 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (char *name, int from_tty, CORE_ADDR text_addr,
		CORE_ADDR data_addr, CORE_ADDR bss_addr)
{
  struct section_offsets *offs;
  struct objfile *objfile;
  struct find_sect_args ss;

  /* It might be nice to suppress the breakpoint_re_set which happens here
     because we are going to do one again after the objfile_relocate.  */
  objfile = FUNC9 (name, from_tty, NULL, 0, 0);

  /* This is a (slightly cheesy) way of superceding the old symbols.  A less
     cheesy way would be to find the objfile with the same name and
     free_objfile it.  */
  FUNC8 (objfile);

  offs =
    (struct section_offsets *)
    FUNC4 (FUNC3 (objfile->num_sections));
  FUNC6 (offs, objfile->section_offsets,
          FUNC3 (objfile->num_sections));

  ss.text_start = 0;
  ss.data_start = 0;
  ss.bss_start = 0;
  FUNC5 (objfile->obfd, find_sect, &ss);

  /* Both COFF and b.out frontends use these SECT_OFF_* values.  */
  offs->offsets[FUNC2 (objfile)]  = text_addr - ss.text_start;
  offs->offsets[FUNC1 (objfile)] = data_addr - ss.data_start;
  offs->offsets[FUNC0 (objfile)] = bss_addr - ss.bss_start;
  FUNC7 (objfile, offs);
}