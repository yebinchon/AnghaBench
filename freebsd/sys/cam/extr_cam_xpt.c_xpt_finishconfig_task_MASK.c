#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  xpt_config_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CAMXPT ; 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xptpassannouncefunc ; 
 TYPE_1__ xsoftc ; 

__attribute__((used)) static void
FUNC4(void *context, int pending)
{

	FUNC2(2);
	/*
	 * Check for devices with no "standard" peripheral driver
	 * attached.  For any devices like that, announce the
	 * passthrough driver so the user will see something.
	 */
	if (!bootverbose)
		FUNC3(xptpassannouncefunc, NULL);

	/* Release our hook so that the boot can continue. */
	FUNC0(&xsoftc.xpt_config_hook);

	FUNC1(context, M_CAMXPT);
}