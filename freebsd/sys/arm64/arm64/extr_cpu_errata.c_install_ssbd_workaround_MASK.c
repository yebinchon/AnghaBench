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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int)) ; 
 int /*<<< orphan*/  SMCCC_ARCH_WORKAROUND_2 ; 
 scalar_t__ SMCCC_RET_SUCCESS ; 
#define  SSBD_FORCE_OFF 130 
#define  SSBD_FORCE_ON 129 
#define  SSBD_KERNEL 128 
 int /*<<< orphan*/  cpuid ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ssbd ; 
 int ssbd_method ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	char *env;

	if (FUNC0(cpuid) == 0) {
		env = FUNC2("kern.cfg.ssbd");
		if (env != NULL) {
			if (FUNC5(env, "force-on") == 0) {
				ssbd_method = SSBD_FORCE_ON;
			} else if (FUNC5(env, "force-off") == 0) {
				ssbd_method = SSBD_FORCE_OFF;
			}
		}
	}

	/* Enable the workaround on this CPU if it's enabled in the firmware */
	if (FUNC3(SMCCC_ARCH_WORKAROUND_2) != SMCCC_RET_SUCCESS)
		return;

	switch(ssbd_method) {
	case SSBD_FORCE_ON:
		FUNC4(1);
		break;
	case SSBD_FORCE_OFF:
		FUNC4(0);
		break;
	case SSBD_KERNEL:
	default:
		FUNC1(ssbd, smccc_arch_workaround_2);
		break;
	}
}