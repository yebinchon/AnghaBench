#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
typedef  int uint32_t ;
struct preloaded_file {int /*<<< orphan*/  f_args; } ;
struct file_metadata {int /*<<< orphan*/  md_data; } ;
typedef  int /*<<< orphan*/  stack ;
struct TYPE_2__ {int e_entry; } ;
typedef  TYPE_1__ Elf_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,...) ; 
 int EFTYPE ; 
 int /*<<< orphan*/  GUEST_GDT ; 
 scalar_t__ GUEST_STACK ; 
 int /*<<< orphan*/  MODINFOMD_ELFHDR ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  copyin ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  exec ; 
 struct file_metadata* FUNC3 (struct preloaded_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  setgdt ; 
 int /*<<< orphan*/  setreg ; 

__attribute__((used)) static int
FUNC7(struct preloaded_file *fp)
{
	struct file_metadata	*md;
	Elf_Ehdr 		*ehdr;
	vm_offset_t		entry, bootinfop, modulep, kernend;
	int			boothowto, err, bootdev;
	uint32_t		stack[1024], *sp;


	if ((md = FUNC3(fp, MODINFOMD_ELFHDR)) == NULL)
		return(EFTYPE);
	ehdr = (Elf_Ehdr *)&(md->md_data);

	err = FUNC1(fp->f_args, &boothowto, &bootdev, &bootinfop, &modulep, &kernend);
	if (err != 0)
		return(err);
	entry = ehdr->e_entry & 0xffffff;

#ifdef DEBUG
	printf("Start @ 0x%lx ...\n", entry);
#endif

	FUNC2();

	/*
	 * Build a scratch stack at physical 0x1000
	 */
	FUNC4(stack, 0, sizeof(stack));
	sp = (uint32_t *)((char *)stack + sizeof(stack));
	*--sp = kernend;
	*--sp = modulep;
	*--sp = bootinfop;
	*--sp = 0;
	*--sp = 0;
	*--sp = 0;
	*--sp = bootdev;
	*--sp = boothowto;

	/*
	 * Fake return address to mimic "new" boot blocks.  For more
	 * details see recover_bootinfo in locore.S.
	 */
	*--sp = 0xbeefface;
	FUNC0(copyin, stack, GUEST_STACK, sizeof(stack));
	FUNC0(setreg, 4, (char *)sp - (char *)stack + GUEST_STACK);

	FUNC0(setgdt, GUEST_GDT, 8 * 4 - 1);

        FUNC0(exec, entry);

	FUNC5("exec returned");
}