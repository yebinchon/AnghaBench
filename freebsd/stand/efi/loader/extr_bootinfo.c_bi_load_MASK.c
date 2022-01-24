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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct preloaded_file {int f_addr; int f_size; struct preloaded_file* f_next; } ;
struct file_metadata {int* md_data; } ;
struct devdesc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* arch_getdev ) (void**,char*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MODINFOMD_DTBP ; 
 int /*<<< orphan*/  MODINFOMD_ENVP ; 
 int /*<<< orphan*/  MODINFOMD_ESYM ; 
 int /*<<< orphan*/  MODINFOMD_FW_HANDLE ; 
 int /*<<< orphan*/  MODINFOMD_HOWTO ; 
 int /*<<< orphan*/  MODINFOMD_KERNEND ; 
 int /*<<< orphan*/  MODINFOMD_SSYM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int ST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ archsw ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct preloaded_file*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct preloaded_file*,int /*<<< orphan*/ ,int,int*) ; 
 struct preloaded_file* FUNC9 (int /*<<< orphan*/ *,char*) ; 
 struct file_metadata* FUNC10 (struct preloaded_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct preloaded_file*) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 size_t FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  relocation_offset ; 
 int FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (void**,char*,int /*<<< orphan*/ *) ; 

int
FUNC19(char *args, vm_offset_t *modulep, vm_offset_t *kernendp)
{
	struct preloaded_file *xp, *kfp;
	struct devdesc *rootdev;
	struct file_metadata *md;
	vm_offset_t addr;
	uint64_t kernend;
	uint64_t envp;
	vm_offset_t size;
	char *rootdevname;
	int howto;
#if defined(LOADER_FDT_SUPPORT)
	vm_offset_t dtbp;
	int dtb_size;
#endif
#if defined(__arm__)
	vm_offset_t vaddr;
	size_t i;
	/*
	 * These metadata addreses must be converted for kernel after
	 * relocation.
	 */
	uint32_t		mdt[] = {
	    MODINFOMD_SSYM, MODINFOMD_ESYM, MODINFOMD_KERNEND,
	    MODINFOMD_ENVP,
#if defined(LOADER_FDT_SUPPORT)
	    MODINFOMD_DTBP
#endif
	};
#endif

	howto = FUNC4(args);

	/*
	 * Allow the environment variable 'rootdev' to override the supplied
	 * device. This should perhaps go to MI code and/or have $rootdev
	 * tested/set by MI code before launching the kernel.
	 */
	rootdevname = FUNC12("rootdev");
	archsw.arch_getdev((void**)(&rootdev), rootdevname, NULL);
	if (rootdev == NULL) {
		FUNC16("Can't determine root device.\n");
		return(EINVAL);
	}

	/* Try reading the /etc/fstab file to select the root device */
	FUNC13(FUNC6((void *)rootdev));

	addr = 0;
	for (xp = FUNC9(NULL, NULL); xp != NULL; xp = xp->f_next) {
		if (addr < (xp->f_addr + xp->f_size))
			addr = xp->f_addr + xp->f_size;
	}

	/* Pad to a page boundary. */
	addr = FUNC17(addr, PAGE_SIZE);

	/* Copy our environment. */
	envp = addr;
	addr = FUNC2(addr);

	/* Pad to a page boundary. */
	addr = FUNC17(addr, PAGE_SIZE);

#if defined(LOADER_FDT_SUPPORT)
	/* Handle device tree blob */
	dtbp = addr;
	dtb_size = fdt_copy(addr);
		
	/* Pad to a page boundary */
	if (dtb_size)
		addr += roundup(dtb_size, PAGE_SIZE);
#endif

	kfp = FUNC9(NULL, "elf kernel");
	if (kfp == NULL)
		kfp = FUNC9(NULL, "elf64 kernel");
	if (kfp == NULL)
		FUNC15("can't find kernel file");
	kernend = 0;	/* fill it in later */
	FUNC8(kfp, MODINFOMD_HOWTO, sizeof howto, &howto);
	FUNC8(kfp, MODINFOMD_ENVP, sizeof envp, &envp);
#if defined(LOADER_FDT_SUPPORT)
	if (dtb_size)
		file_addmetadata(kfp, MODINFOMD_DTBP, sizeof dtbp, &dtbp);
	else
		printf("WARNING! Trying to fire up the kernel, but no "
		    "device tree blob found!\n");
#endif
	FUNC8(kfp, MODINFOMD_KERNEND, sizeof kernend, &kernend);
	FUNC8(kfp, MODINFOMD_FW_HANDLE, sizeof ST, &ST);
#ifdef LOADER_GELI_SUPPORT
	geli_export_key_metadata(kfp);
#endif
	FUNC5(kfp);

	/* Figure out the size and location of the metadata. */
	*modulep = addr;
	size = FUNC3(0);
	kernend = FUNC17(addr + size, PAGE_SIZE);
	*kernendp = kernend;

	/* patch MODINFOMD_KERNEND */
	md = FUNC10(kfp, MODINFOMD_KERNEND);
	FUNC1(&kernend, md->md_data, sizeof kernend);

#if defined(__arm__)
	*modulep -= __elfN(relocation_offset);

	/* Do relocation fixup on metadata of each module. */
	for (xp = file_findfile(NULL, NULL); xp != NULL; xp = xp->f_next) {
		for (i = 0; i < nitems(mdt); i++) {
			md = file_findmetadata(xp, mdt[i]);
			if (md) {
				bcopy(md->md_data, &vaddr, sizeof vaddr);
				vaddr -= __elfN(relocation_offset);
				bcopy(&vaddr, md->md_data, sizeof vaddr);
			}
		}
	}
#endif

	/* Copy module list and metadata. */
	(void)FUNC3(addr);

	return (0);
}