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
typedef  scalar_t__ uint32_t ;
struct arm_tmr_softc {int /*<<< orphan*/  physical; scalar_t__ (* get_cntxct ) (int /*<<< orphan*/ ) ;} ;
typedef  int int32_t ;
struct TYPE_2__ {int tc_frequency; } ;

/* Variables and functions */
 TYPE_1__ arm_tmr_timecount ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(int usec, void *arg)
{
	struct arm_tmr_softc *sc = arg;
	int32_t counts, counts_per_usec;
	uint32_t first, last;

	/* Get the number of times to count */
	counts_per_usec = ((arm_tmr_timecount.tc_frequency / 1000000) + 1);

	/*
	 * Clamp the timeout at a maximum value (about 32 seconds with
	 * a 66MHz clock). *Nobody* should be delay()ing for anywhere
	 * near that length of time and if they are, they should be hung
	 * out to dry.
	 */
	if (usec >= (0x80000000U / counts_per_usec))
		counts = (0x80000000U / counts_per_usec) - 1;
	else
		counts = usec * counts_per_usec;

	first = sc->get_cntxct(sc->physical);

	while (counts > 0) {
		last = sc->get_cntxct(sc->physical);
		counts -= (int32_t)(last - first);
		first = last;
	}
}