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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * fdtp ; 
 int fdtp_size ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(vm_offset_t va)
{
	int err;
	FUNC1("fdt_copy va 0x%08x\n", va);
	if (fdtp == NULL) {
		err = FUNC3();
		if (err) {
			FUNC4("No valid device tree blob found!\n");
			return (0);
		}
	}

	if (FUNC2() == 0)
		return (0);

	FUNC0(fdtp, va, fdtp_size);
	return (fdtp_size);
}