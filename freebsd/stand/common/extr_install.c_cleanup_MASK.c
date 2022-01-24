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
typedef  size_t u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ******) ; 
 int /*<<< orphan*/ ****** inst_kernel ; 
 int /*<<< orphan*/ ****** inst_loader_rc ; 
 int /*<<< orphan*/ ****** inst_modules ; 
 int /*<<< orphan*/ ****** inst_rootfs ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(void)
{
	u_int i;

	if (inst_kernel != NULL) {
		FUNC0(inst_kernel);
		inst_kernel = NULL;
	}
	if (inst_modules != NULL) {
		i = 0;
		while (inst_modules[i] != NULL)
			FUNC0(&inst_modules[i++]);
		FUNC0(inst_modules);
		inst_modules = NULL;
	}
	if (inst_rootfs != NULL) {
		FUNC0(inst_rootfs);
		inst_rootfs = NULL;
	}
	if (inst_loader_rc != NULL) {
		FUNC0(inst_loader_rc);
		inst_loader_rc = NULL;
	}
	FUNC1();
}