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
typedef  int uint32_t ;
struct gic_v3_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GICR_WAKER ; 
 int GICR_WAKER_CA ; 
 int GICR_WAKER_PS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gic_v3_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gic_v3_softc*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct gic_v3_softc *sc)
{
	uint32_t waker;
	size_t us_left = 1000000;

	waker = FUNC3(sc, 4, GICR_WAKER);
	/* Wake up Re-Distributor for this CPU */
	waker &= ~GICR_WAKER_PS;
	FUNC4(sc, 4, GICR_WAKER, waker);
	/*
	 * When clearing ProcessorSleep bit it is required to wait for
	 * ChildrenAsleep to become zero following the processor power-on.
	 */
	while ((FUNC3(sc, 4, GICR_WAKER) & GICR_WAKER_CA) != 0) {
		FUNC0(1);
		if (us_left-- == 0) {
			FUNC5("Could not wake Re-Distributor for CPU%u",
			    FUNC1(cpuid));
		}
	}

	if (bootverbose) {
		FUNC2(sc->dev, "CPU%u Re-Distributor woke up\n",
		    FUNC1(cpuid));
	}

	return (0);
}