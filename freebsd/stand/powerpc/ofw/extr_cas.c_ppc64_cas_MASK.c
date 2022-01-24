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
typedef  int ihandle_t ;
typedef  scalar_t__ cell_t ;

/* Variables and functions */
 int FUNC0 (char*,int,int,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int PVR_CPU_MASK ; 
#define  PVR_CPU_P8 131 
#define  PVR_CPU_P8E 130 
#define  PVR_CPU_P8NVL 129 
#define  PVR_CPU_P9 128 
 int /*<<< orphan*/  ibm_arch_vec ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

int
FUNC6(void)
{
	int rc;
	ihandle_t ihandle;
	cell_t err;

	/* Perform CAS only for POWER8 and later cores */
	switch (FUNC3() & PVR_CPU_MASK) {
		case PVR_CPU_P8:
		case PVR_CPU_P8E:
		case PVR_CPU_P8NVL:
		case PVR_CPU_P9:
			break;
		default:
			return (0);
	}

	/* Skip CAS when running on PowerNV */
	if (FUNC4())
		return (0);

	ihandle = FUNC2("/");
	if (ihandle == -1) {
		FUNC5("cas: failed to open / node\n");
		return (-1);
	}

	if ((rc = FUNC0("ibm,client-architecture-support",
	    ihandle, 1, 1, &ibm_arch_vec, &err)))
		FUNC5("cas: failed to call CAS method\n");
	else if (err) {
		FUNC5("cas: error: 0x%08lX\n", err);
		rc = -1;
	}

	FUNC1(ihandle);
	return (rc);
}