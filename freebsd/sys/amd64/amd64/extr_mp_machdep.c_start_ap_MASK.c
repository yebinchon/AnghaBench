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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int boot_address ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int mp_naps ; 

__attribute__((used)) static int
FUNC2(int apic_id)
{
	int vector, ms;
	int cpus;

	/* calculate the vector */
	vector = (boot_address >> 12) & 0xff;

	/* used as a watchpoint to signal AP startup */
	cpus = mp_naps;

	FUNC1(apic_id, vector);

	/* Wait up to 5 seconds for it to start. */
	for (ms = 0; ms < 5000; ms++) {
		if (mp_naps > cpus)
			return 1;	/* return SUCCESS */
		FUNC0(1000);
	}
	return 0;		/* return FAILURE */
}