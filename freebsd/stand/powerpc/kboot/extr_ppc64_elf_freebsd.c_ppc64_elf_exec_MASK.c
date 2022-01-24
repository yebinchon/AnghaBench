#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct trampoline_data {void* mdp; void* dtb; void* kernel_entry; void* mdp_size; void* of_entry; void* phys_mem_offset; } ;
struct preloaded_file {int /*<<< orphan*/  f_args; } ;
struct file_metadata {int /*<<< orphan*/  md_data; } ;
struct TYPE_4__ {int (* arch_loadaddr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* arch_kexec_kseg_get ) (int*,void**) ;int /*<<< orphan*/  (* arch_copyin ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* arch_copyout ) (int,int*,int) ;} ;
struct TYPE_3__ {int e_flags; int e_entry; } ;
typedef  TYPE_1__ Elf_Ehdr ;

/* Variables and functions */
 int EFTYPE ; 
 int /*<<< orphan*/  LOAD_RAW ; 
 int /*<<< orphan*/  MODINFOMD_ELFHDR ; 
 TYPE_2__ archsw ; 
 int FUNC0 (void*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int elf64_relocation_offset ; 
 struct file_metadata* FUNC3 (struct preloaded_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int,int,uintptr_t) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  kerneltramp ; 
 int FUNC7 (int,int,uintptr_t) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int*,void**) ; 
 int /*<<< orphan*/  szkerneltramp ; 

int
FUNC17(struct preloaded_file *fp)
{
	struct file_metadata	*fmp;
	vm_offset_t		mdp, dtb;
	Elf_Ehdr		*e;
	int			error;
	uint32_t		*trampoline;
	uint64_t		entry;
	uint64_t		trampolinebase;
	struct trampoline_data	*trampoline_data;
	int			nseg;
	void			*kseg;

	if ((fmp = FUNC3(fp, MODINFOMD_ELFHDR)) == NULL) {
		return(EFTYPE);
	}
	e = (Elf_Ehdr *)&fmp->md_data;

	/*
	 * Figure out where to put it.
	 *
	 * Linux does not allow to do kexec_load into
	 * any part of memory. Ask arch_loadaddr to
	 * resolve the first available chunk of physical
	 * memory where loading is possible (load_addr).
	 *
	 * Memory organization is shown below.
	 * It is assumed, that text segment offset of
	 * kernel ELF (KERNPHYSADDR) is non-zero,
	 * which is true for PPC/PPC64 architectures,
	 * where default is 0x100000.
	 *
	 * load_addr:                 trampoline code
	 * load_addr + KERNPHYSADDR:  kernel text segment
	 */
	trampolinebase = archsw.arch_loadaddr(LOAD_RAW, NULL, 0);
	FUNC12("Load address at %#jx\n", (uintmax_t)trampolinebase);
	FUNC12("Relocation offset is %#jx\n", (uintmax_t)elf64_relocation_offset);

	/* Set up loader trampoline */
	trampoline = FUNC8(szkerneltramp);
	FUNC10(trampoline, &kerneltramp, szkerneltramp);

	/* Parse function descriptor for ELFv1 kernels */
	if ((e->e_flags & 3) == 2)
		entry = e->e_entry;
	else {
		archsw.arch_copyout(e->e_entry + elf64_relocation_offset,
		    &entry, 8);
		entry = FUNC1(entry);
	}

	/*
	 * Placeholder for trampoline data is at trampolinebase + 0x08
	 * CAUTION: all data must be Big Endian
	 */
	trampoline_data = (void*)&trampoline[2];
	trampoline_data->kernel_entry = FUNC6(entry + elf64_relocation_offset);
	trampoline_data->phys_mem_offset = FUNC6(0);
	trampoline_data->of_entry = FUNC6(0);

	if ((error = FUNC9(fp->f_args, &mdp, &dtb)) != 0)
		return (error);

	trampoline_data->dtb = FUNC6(dtb);
	trampoline_data->mdp = FUNC6(mdp);
	trampoline_data->mdp_size = FUNC6(0xfb5d104d);

	FUNC12("Kernel entry at %#jx (%#x) ...\n",
	    entry, FUNC0(trampoline_data->kernel_entry));
	FUNC12("DTB at %#x, mdp at %#x\n",
	    FUNC0(trampoline_data->dtb), FUNC0(trampoline_data->mdp));

	FUNC2();

	archsw.arch_copyin(trampoline, trampolinebase, szkerneltramp);
	FUNC4(trampoline);

	if (archsw.arch_kexec_kseg_get == NULL)
		FUNC11("architecture did not provide kexec segment mapping");
	archsw.arch_kexec_kseg_get(&nseg, &kseg);

	error = FUNC7(trampolinebase, nseg, (uintptr_t)kseg);
	if (error != 0)
		FUNC11("kexec_load returned error: %d", error);

	error = FUNC5(0xfee1dead, 672274793,
	    0x45584543 /* LINUX_REBOOT_CMD_KEXEC */, (uintptr_t)NULL);
	if (error != 0)
		FUNC11("reboot returned error: %d", error);

	while (1) {}
}