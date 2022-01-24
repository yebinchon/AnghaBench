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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct preloaded_file {char* f_name; int /*<<< orphan*/  f_addr; } ;

/* Variables and functions */
 char* command_errmsg ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * fdt_to_load ; 
 struct preloaded_file* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

int
FUNC8()
{
	struct preloaded_file *bfp;
	vm_offset_t va;
	
	FUNC0("fdt_setup_fdtp()\n");

	/* If we already loaded a file, use it. */
	if ((bfp = FUNC6(NULL, "dtb")) != NULL) {
		if (FUNC2(bfp->f_addr) == 0) {
			FUNC7("Using DTB from loaded file '%s'.\n", 
			    bfp->f_name);
			FUNC5();
			return (0);
		}
	}

	/* If we were given the address of a valid blob in memory, use it. */
	if (fdt_to_load != NULL) {
		if (FUNC3(fdt_to_load) == 0) {
			FUNC7("Using DTB from memory address %p.\n",
			    fdt_to_load);
			FUNC5();
			return (0);
		}
	}

	if (FUNC4() == 0) {
		FUNC5();
		return (0);
	}

	/* If there is a dtb compiled into the kernel, use it. */
	if ((va = FUNC1()) != 0) {
		if (FUNC2(va) == 0) {
			FUNC7("Using DTB compiled into kernel.\n");
			return (0);
		}
	}
	
	command_errmsg = "No device tree blob found!\n";
	return (1);
}