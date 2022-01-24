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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPI_AST ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int vmm_initialized ; 
 int /*<<< orphan*/  vmm_ipinum ; 
 int /*<<< orphan*/ * vmm_resume_p ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(module_t mod, int what, void *arg)
{
	int error;

	switch (what) {
	case MOD_LOAD:
		FUNC5();
		error = FUNC3();
		if (error == 0)
			vmm_initialized = 1;
		break;
	case MOD_UNLOAD:
		error = FUNC4();
		if (error == 0) {
			vmm_resume_p = NULL;
			FUNC1();
			if (vmm_ipinum != IPI_AST)
				FUNC2(vmm_ipinum);
			error = FUNC0();
			/*
			 * Something bad happened - prevent new
			 * VMs from being created
			 */
			if (error)
				vmm_initialized = 0;
		}
		break;
	default:
		error = 0;
		break;
	}
	return (error);
}