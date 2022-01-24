#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_3__ {int /*<<< orphan*/  ipt_wrap; int /*<<< orphan*/ * ipt_func; int /*<<< orphan*/  ipt_ftype; int /*<<< orphan*/  ipt_argcnt; } ;
typedef  TYPE_1__ image_patch_table ;
typedef  int /*<<< orphan*/  funcptr ;

/* Variables and functions */
 int EINVAL ; 
#define  MOD_LOAD 130 
#define  MOD_SHUTDOWN 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* kernndis_functbl ; 
 int /*<<< orphan*/  ndis_devhead ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(module_t mod, int cmd, void *arg)
{
	int			error = 0;
	image_patch_table	*patch;

	switch (cmd) {
	case MOD_LOAD:
		/* Initialize subsystems */
		FUNC3();
		FUNC7();
		FUNC11();
		FUNC5();
		FUNC9();

		patch = kernndis_functbl;
		while (patch->ipt_func != NULL) {
			FUNC13((funcptr)patch->ipt_func,
			    (funcptr *)&patch->ipt_wrap,
			    patch->ipt_argcnt, patch->ipt_ftype);
			patch++;
		}

		FUNC1(&ndis_devhead);
		break;
	case MOD_SHUTDOWN:
		if (FUNC0(&ndis_devhead) == NULL) {
			/* Shut down subsystems */
			FUNC4();
			FUNC8();
			FUNC10();
			FUNC6();
			FUNC2();

			patch = kernndis_functbl;
			while (patch->ipt_func != NULL) {
				FUNC12(patch->ipt_wrap);
				patch++;
			}
		}
		break;
	case MOD_UNLOAD:
		/* Shut down subsystems */
		FUNC4();
		FUNC8();
		FUNC10();
		FUNC6();
		FUNC2();

		patch = kernndis_functbl;
		while (patch->ipt_func != NULL) {
			FUNC12(patch->ipt_wrap);
			patch++;
		}

		break;
	default:
		error = EINVAL;
		break;
	}

	return (error);
}