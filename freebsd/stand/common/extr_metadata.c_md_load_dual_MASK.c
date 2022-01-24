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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct preloaded_file {scalar_t__ f_addr; scalar_t__ f_size; struct preloaded_file* f_next; } ;
struct file_metadata {scalar_t__* md_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODINFOMD_DTBP ; 
 int /*<<< orphan*/  MODINFOMD_DTLB ; 
 int /*<<< orphan*/  MODINFOMD_DTLB_SLOTS ; 
 int /*<<< orphan*/  MODINFOMD_ENVP ; 
 int /*<<< orphan*/  MODINFOMD_ESYM ; 
 int /*<<< orphan*/  MODINFOMD_HOWTO ; 
 int /*<<< orphan*/  MODINFOMD_ITLB ; 
 int /*<<< orphan*/  MODINFOMD_ITLB_SLOTS ; 
 int /*<<< orphan*/  MODINFOMD_KERNEND ; 
 int /*<<< orphan*/  MODINFOMD_SSYM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int align ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int) ; 
 int dtlb_slot ; 
 int* dtlb_store ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct preloaded_file*,int /*<<< orphan*/ ,int,...) ; 
 struct preloaded_file* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct file_metadata* FUNC5 (struct preloaded_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct preloaded_file*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int itlb_slot ; 
 int* itlb_store ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  relocation_offset ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(char *args, vm_offset_t *modulep, vm_offset_t *dtb, int kern64)
{
    struct preloaded_file	*kfp;
    struct preloaded_file	*xp;
    struct file_metadata	*md;
    vm_offset_t			kernend;
    vm_offset_t			addr;
    vm_offset_t			envp;
#if defined(LOADER_FDT_SUPPORT)
    vm_offset_t			fdtp;
#endif
    vm_offset_t			size;
    uint64_t			scratch64;
    char			*rootdevname;
    int				howto;
#ifdef __arm__
    vm_offset_t			vaddr;
    int				i;

	/*
	 * These metadata addreses must be converted for kernel after
	 * relocation.
	 */
    uint32_t			mdt[] = {
	    MODINFOMD_SSYM, MODINFOMD_ESYM, MODINFOMD_KERNEND,
	    MODINFOMD_ENVP,
#if defined(LOADER_FDT_SUPPORT)
	    MODINFOMD_DTBP
#endif
    };
#endif

    align = kern64 ? 8 : 4;
    howto = FUNC11(args);

    /*
     * Allow the environment variable 'rootdev' to override the supplied
     * device. This should perhaps go to MI code and/or have $rootdev
     * tested/set by MI code before launching the kernel.
     */
    rootdevname = FUNC7("rootdev");
    if (rootdevname == NULL)
	rootdevname = FUNC7("currdev");
    /* Try reading the /etc/fstab file to select the root device */
    FUNC8(rootdevname);

    /* Find the last module in the chain */
    addr = 0;
    for (xp = FUNC4(NULL, NULL); xp != NULL; xp = xp->f_next) {
	if (addr < (xp->f_addr + xp->f_size))
	    addr = xp->f_addr + xp->f_size;
    }
    /* Pad to a page boundary */
    addr = FUNC14(addr, PAGE_SIZE);

    /* Copy our environment */
    envp = addr;
    addr = FUNC9(addr);

    /* Pad to a page boundary */
    addr = FUNC14(addr, PAGE_SIZE);

#if defined(LOADER_FDT_SUPPORT)
    /* Copy out FDT */
    fdtp = 0;
#if defined(__powerpc__)
    if (getenv("usefdt") != NULL)
#endif
    {
	size = fdt_copy(addr);
	fdtp = addr;
	addr = roundup(addr + size, PAGE_SIZE);
    }
#endif

    kernend = 0;
    kfp = FUNC4(NULL, kern64 ? "elf64 kernel" : "elf32 kernel");
    if (kfp == NULL)
	kfp = FUNC4(NULL, "elf kernel");
    if (kfp == NULL)
	FUNC13("can't find kernel file");
    FUNC3(kfp, MODINFOMD_HOWTO, sizeof howto, &howto);
    if (kern64) {
	scratch64 = envp;
	FUNC3(kfp, MODINFOMD_ENVP, sizeof scratch64, &scratch64);
#if defined(LOADER_FDT_SUPPORT)
	if (fdtp != 0) {
	    scratch64 = fdtp;
	    file_addmetadata(kfp, MODINFOMD_DTBP, sizeof scratch64, &scratch64);
	}
#endif
	scratch64 = kernend;
	FUNC3(kfp, MODINFOMD_KERNEND,
		sizeof scratch64, &scratch64);
    } else {
	FUNC3(kfp, MODINFOMD_ENVP, sizeof envp, &envp);
#if defined(LOADER_FDT_SUPPORT)
	if (fdtp != 0)
	    file_addmetadata(kfp, MODINFOMD_DTBP, sizeof fdtp, &fdtp);
#endif
	FUNC3(kfp, MODINFOMD_KERNEND, sizeof kernend, &kernend);
    }
#ifdef LOADER_GELI_SUPPORT
    geli_export_key_metadata(kfp);
#endif
#if defined(__sparc64__)
    file_addmetadata(kfp, MODINFOMD_DTLB_SLOTS,
	sizeof dtlb_slot, &dtlb_slot);
    file_addmetadata(kfp, MODINFOMD_ITLB_SLOTS,
	sizeof itlb_slot, &itlb_slot);
    file_addmetadata(kfp, MODINFOMD_DTLB,
	dtlb_slot * sizeof(*dtlb_store), dtlb_store);
    file_addmetadata(kfp, MODINFOMD_ITLB,
	itlb_slot * sizeof(*itlb_store), itlb_store);
#endif

    *modulep = addr;
    size = FUNC10(0, kern64);
    kernend = FUNC14(addr + size, PAGE_SIZE);

    md = FUNC5(kfp, MODINFOMD_KERNEND);
    if (kern64) {
	scratch64 = kernend;
	FUNC1(&scratch64, md->md_data, sizeof scratch64);
    } else {
	FUNC1(&kernend, md->md_data, sizeof kernend);
    }

#ifdef __arm__
    /* Convert addresses to the final VA */
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

    (void)FUNC10(addr, kern64);
#if defined(LOADER_FDT_SUPPORT)
    if (dtb != NULL)
	*dtb = fdtp;
#endif

    return(0);
}