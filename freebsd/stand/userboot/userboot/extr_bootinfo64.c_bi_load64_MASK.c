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
struct userboot_devdesc {int dummy; } ;
struct preloaded_file {scalar_t__ f_addr; scalar_t__ f_size; struct preloaded_file* f_next; } ;
struct file_metadata {int /*<<< orphan*/  md_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MODINFOMD_ENVP ; 
 int /*<<< orphan*/  MODINFOMD_HOWTO ; 
 int /*<<< orphan*/  MODINFOMD_KERNEND ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct preloaded_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct preloaded_file*,int /*<<< orphan*/ ,int,int*) ; 
 struct preloaded_file* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct file_metadata* FUNC8 (struct preloaded_file*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (void**,char*,int /*<<< orphan*/ *) ; 

int
FUNC16(char *args, vm_offset_t *modulep, vm_offset_t *kernendp)
{
    struct preloaded_file	*xp, *kfp;
    struct userboot_devdesc	*rootdev;
    struct file_metadata	*md;
    vm_offset_t			addr;
    uint64_t			kernend;
    uint64_t			envp;
    vm_offset_t			size;
    char			*rootdevname;
    int				howto;

    if (!FUNC1()) {
	FUNC12("CPU doesn't support long mode\n");
	return (EINVAL);
    }

    howto = FUNC4(args);

    /* 
     * Allow the environment variable 'rootdev' to override the supplied device 
     * This should perhaps go to MI code and/or have $rootdev tested/set by
     * MI code before launching the kernel.
     */
    rootdevname = FUNC9("rootdev");
    FUNC15((void **)(&rootdev), rootdevname, NULL);
    if (rootdev == NULL) {		/* bad $rootdev/$currdev */
	FUNC12("can't determine root device\n");
	return(EINVAL);
    }

    /* Try reading the /etc/fstab file to select the root device */
    FUNC10(FUNC14((void *)rootdev));

    /* find the last module in the chain */
    addr = 0;
    for (xp = FUNC7(NULL, NULL); xp != NULL; xp = xp->f_next) {
	if (addr < (xp->f_addr + xp->f_size))
	    addr = xp->f_addr + xp->f_size;
    }
    /* pad to a page boundary */
    addr = FUNC13(addr, PAGE_SIZE);

    /* copy our environment */
    envp = addr;
    addr = FUNC2(addr);

    /* pad to a page boundary */
    addr = FUNC13(addr, PAGE_SIZE);

    kfp = FUNC7(NULL, "elf kernel");
    if (kfp == NULL)
      kfp = FUNC7(NULL, "elf64 kernel");
    if (kfp == NULL)
	FUNC11("can't find kernel file");
    kernend = 0;	/* fill it in later */
    FUNC6(kfp, MODINFOMD_HOWTO, sizeof howto, &howto);
    FUNC6(kfp, MODINFOMD_ENVP, sizeof envp, &envp);
    FUNC6(kfp, MODINFOMD_KERNEND, sizeof kernend, &kernend);
    FUNC5(kfp);

    /* Figure out the size and location of the metadata */
    *modulep = addr;
    size = FUNC3(0);
    kernend = FUNC13(addr + size, PAGE_SIZE);
    *kernendp = kernend;

    /* patch MODINFOMD_KERNEND */
    md = FUNC8(kfp, MODINFOMD_KERNEND);
    FUNC0(&kernend, md->md_data, sizeof kernend);

    /* copy module list and metadata */
    (void)FUNC3(addr);

    return(0);
}