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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DPCPU_SIZE ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  all_cpus ; 
 int /*<<< orphan*/  ap_boot_mtx ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void** dpcpu ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(void)
{
	int error, i;

	FUNC4(&ap_boot_mtx, "ap boot", NULL, MTX_SPIN);

	/* Reserve memory for application processors */
	for(i = 0; i < (mp_ncpus - 1); i++)
		dpcpu[i] = (void *)FUNC3(DPCPU_SIZE, M_WAITOK | M_ZERO);

	FUNC2();

	/* Initialize boot code and start up processors */
	FUNC5();

	/*  Check if ap's started properly */
	error = FUNC1();
	if (error)
		FUNC6("WARNING: Some AP's failed to start\n");
	else
		for (i = 1; i < mp_ncpus; i++)
			FUNC0(i, &all_cpus);
}