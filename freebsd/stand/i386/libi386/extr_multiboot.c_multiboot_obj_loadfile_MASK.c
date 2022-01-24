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
typedef  int /*<<< orphan*/  uint64_t ;
struct preloaded_file {char* f_name; scalar_t__ f_size; scalar_t__ f_addr; } ;
struct kernel_module {int dummy; } ;

/* Variables and functions */
 int EFTYPE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct preloaded_file*,scalar_t__) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,struct preloaded_file**) ; 
 struct preloaded_file* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct preloaded_file* FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct preloaded_file*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC9(char *filename, uint64_t dest,
    struct preloaded_file **result)
{
	struct preloaded_file	*mfp, *kfp, *rfp;
	struct kernel_module	*kmp;
	int			 error, mod_num;

	/* See if there's a multiboot kernel loaded */
	mfp = FUNC3(NULL, "elf multiboot kernel");
	if (mfp == NULL)
		return (EFTYPE);

	/*
	 * We have a multiboot kernel loaded, see if there's a FreeBSD
	 * kernel loaded also.
	 */
	kfp = FUNC3(NULL, "elf kernel");
	if (kfp == NULL) {
		/*
		 * No kernel loaded, this must be it. The kernel has to
		 * be loaded as a raw file, it will be processed by
		 * Xen and correctly loaded as an ELF file.
		 */
		rfp = FUNC4(filename, "elf kernel", 0);
		if (rfp == NULL) {
			FUNC6(
			"Unable to load %s as a multiboot payload kernel\n",
			filename);
			return (EINVAL);
		}

		/* Load kernel metadata... */
		FUNC8("kernelname", filename, 1);
		error = FUNC1(rfp, rfp->f_addr + rfp->f_size);
		if (error) {
			FUNC6("Unable to load kernel %s metadata error: %d\n",
			    rfp->f_name, error);
			return (EINVAL);
		}

		/*
		 * Save space at the end of the kernel in order to place
		 * the metadata information. We do an approximation of the
		 * max metadata size, this is not optimal but it's probably
		 * the best we can do at this point. Once all modules are
		 * loaded and the size of the metadata is known this
		 * space will be recovered if not used.
		 */
		mod_num = FUNC5(rfp);
		rfp->f_size = FUNC7(rfp->f_size, PAGE_SIZE);
		rfp->f_size += FUNC0(mod_num);
		*result = rfp;
	} else {
		/* The rest should be loaded as regular modules */
		error = FUNC2(filename, dest, result);
		if (error != 0) {
			FUNC6("Unable to load %s as an object file, error: %d",
			    filename, error);
			return (error);
		}
	}

	return (0);
}