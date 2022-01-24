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
typedef  int uint64_t ;
struct preloaded_file {scalar_t__ f_addr; scalar_t__ f_size; struct preloaded_file* f_next; } ;
struct i386_devdesc {int dummy; } ;
struct file_metadata {int /*<<< orphan*/  md_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MODINFOMD_ENVP ; 
 int /*<<< orphan*/  MODINFOMD_HOWTO ; 
 int /*<<< orphan*/  MODINFOMD_KERNEND ; 
 int /*<<< orphan*/  MODINFOMD_MODULEP ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct preloaded_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct preloaded_file*,int /*<<< orphan*/ ,int,int*) ; 
 struct preloaded_file* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct file_metadata* FUNC8 (struct preloaded_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct preloaded_file*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC17(char *args, vm_offset_t addr, vm_offset_t *modulep,
    vm_offset_t *kernendp, int add_smap)
{
    struct preloaded_file	*xp, *kfp;
    struct i386_devdesc		*rootdev;
    struct file_metadata	*md;
    uint64_t			kernend;
    uint64_t			envp;
    uint64_t			module;
    vm_offset_t			size;
    char			*rootdevname;
    int				howto;

    if (!FUNC1()) {
	FUNC15("CPU doesn't support long mode\n");
	return (EINVAL);
    }

    howto = FUNC4(args);

    /*
     * Allow the environment variable 'rootdev' to override the supplied device
     * This should perhaps go to MI code and/or have $rootdev tested/set by
     * MI code before launching the kernel.
     */
    rootdevname = FUNC10("rootdev");
    FUNC13((void **)(&rootdev), rootdevname, NULL);
    if (rootdev == NULL) {		/* bad $rootdev/$currdev */
	FUNC15("can't determine root device\n");
	return(EINVAL);
    }

    /* Try reading the /etc/fstab file to select the root device */
    FUNC11(FUNC12((void *)rootdev));

    if (addr == 0) {
        /* find the last module in the chain */
        for (xp = FUNC7(NULL, NULL); xp != NULL; xp = xp->f_next) {
            if (addr < (xp->f_addr + xp->f_size))
                addr = xp->f_addr + xp->f_size;
        }
    }
    /* pad to a page boundary */
    addr = FUNC16(addr, PAGE_SIZE);

    /* place the metadata before anything */
    module = *modulep = addr;

    kfp = FUNC7(NULL, "elf kernel");
    if (kfp == NULL)
      kfp = FUNC7(NULL, "elf64 kernel");
    if (kfp == NULL)
	FUNC14("can't find kernel file");
    kernend = 0;	/* fill it in later */
    FUNC6(kfp, MODINFOMD_HOWTO, sizeof howto, &howto);
    FUNC6(kfp, MODINFOMD_ENVP, sizeof envp, &envp);
    FUNC6(kfp, MODINFOMD_KERNEND, sizeof kernend, &kernend);
    FUNC6(kfp, MODINFOMD_MODULEP, sizeof module, &module);
    if (add_smap != 0)
        FUNC5(kfp);
#ifdef LOADER_GELI_SUPPORT
    geli_export_key_metadata(kfp);
#endif

    size = FUNC3(0);

    /* copy our environment */
    envp = FUNC16(addr + size, PAGE_SIZE);
    addr = FUNC2(envp);

    /* set kernend */
    kernend = FUNC16(addr, PAGE_SIZE);
    *kernendp = kernend;

    /* patch MODINFOMD_KERNEND */
    md = FUNC8(kfp, MODINFOMD_KERNEND);
    FUNC0(&kernend, md->md_data, sizeof kernend);

    /* patch MODINFOMD_ENVP */
    md = FUNC8(kfp, MODINFOMD_ENVP);
    FUNC0(&envp, md->md_data, sizeof envp);

    /* copy module list and metadata */
    (void)FUNC3(*modulep);

    return(0);
}