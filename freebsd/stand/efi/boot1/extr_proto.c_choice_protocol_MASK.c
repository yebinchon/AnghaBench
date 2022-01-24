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
typedef  int /*<<< orphan*/  dev_info_t ;
typedef  int /*<<< orphan*/  boot_order ;
typedef  int /*<<< orphan*/  boot_module_t ;
typedef  int /*<<< orphan*/  boot_current ;
typedef  unsigned int UINTN ;
typedef  int UINT16 ;
struct TYPE_4__ {int /*<<< orphan*/  (* Exit ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* status ) () ;} ;
typedef  scalar_t__ EFI_STATUS ;
typedef  int /*<<< orphan*/  EFI_HANDLE ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;

/* Variables and functions */
 TYPE_2__* BS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EFI_OUT_OF_RESOURCES ; 
 scalar_t__ EFI_SUCCESS ; 
 int /*<<< orphan*/  IH ; 
 char* PATH_LOADER_EFI ; 
 TYPE_1__** boot_modules ; 
 scalar_t__ FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const**,int /*<<< orphan*/ **,void**,size_t*,int) ; 
 unsigned int num_boot_modules ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char** prio_str ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,void*,size_t) ; 

void
FUNC8(EFI_HANDLE *handles, UINTN nhandles, EFI_DEVICE_PATH *imgpath)
{
	UINT16 boot_current;
	size_t sz;
	UINT16 boot_order[100];
	unsigned i;
	int rv;
	EFI_STATUS status;
	const boot_module_t *mod;
	dev_info_t *dev;
	void *loaderbuf;
	size_t loadersize;

	/* Report UEFI Boot Manager Protocol details */
	boot_current = 0;
	sz = sizeof(boot_current);
	if (FUNC1("BootCurrent", &boot_current, &sz) == EFI_SUCCESS) {
		FUNC3("   BootCurrent: %04x\n", boot_current);

		sz = sizeof(boot_order);
		if (FUNC1("BootOrder", &boot_order, &sz) == EFI_SUCCESS) {
			FUNC3("   BootOrder:");
			for (i = 0; i < sz / sizeof(boot_order[0]); i++)
				FUNC3(" %04x%s", boot_order[i],
				    boot_order[i] == boot_current ? "[*]" : "");
			FUNC3("\n");
		}
	}

#ifdef TEST_FAILURE
	/*
	 * For testing failover scenarios, it's nice to be able to fail fast.
	 * Define TEST_FAILURE to create a boot1.efi that always fails after
	 * reporting the boot manager protocol details.
	 */
	BS->Exit(IH, EFI_OUT_OF_RESOURCES, 0, NULL);
#endif

	/* Scan all partitions, probing with all modules. */
	FUNC3("   Probing %zu block devices...", nhandles);
	FUNC0("\n");
	for (i = 0; i < nhandles; i++) {
		rv = FUNC4(handles[i], imgpath);
#ifdef EFI_DEBUG
		printf("%c", "x.+*"[rv + 1]);
#else
		FUNC3("%s\n", prio_str[rv + 1]);
#endif
	}
	FUNC3(" done\n");


	/* Status summary. */
	for (i = 0; i < num_boot_modules; i++) {
		FUNC3("    ");
		boot_modules[i]->status();
	}

	status = FUNC2(&mod, &dev, &loaderbuf, &loadersize, 1);
	if (status != EFI_SUCCESS) {
		status = FUNC2(&mod, &dev, &loaderbuf, &loadersize, 0);
		if (status != EFI_SUCCESS) {
			FUNC3("Failed to load '%s'\n", PATH_LOADER_EFI);
			return;
		}
	}

	FUNC7(mod, dev, loaderbuf, loadersize);
}