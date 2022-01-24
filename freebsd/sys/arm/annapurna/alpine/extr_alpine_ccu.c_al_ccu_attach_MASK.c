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
struct al_ccu_softc {int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AL_CCU_SNOOP_CONTROL_IOFAB_0_OFFSET ; 
 int /*<<< orphan*/  AL_CCU_SNOOP_CONTROL_IOFAB_1_OFFSET ; 
 int /*<<< orphan*/  AL_CCU_SPECULATION_CONTROL_OFFSET ; 
 int /*<<< orphan*/  al_ccu_spec ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct al_ccu_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct al_ccu_softc *sc;
	int err;

	sc = FUNC2(dev);

	err = FUNC0(dev, al_ccu_spec, &sc->res);
	if (err != 0) {
		FUNC3(dev, "could not allocate resources\n");
		return (err);
	}

	/* Enable cache snoop */
	FUNC1(sc->res, AL_CCU_SNOOP_CONTROL_IOFAB_0_OFFSET, 1);
	FUNC1(sc->res, AL_CCU_SNOOP_CONTROL_IOFAB_1_OFFSET, 1);

	/* Disable speculative fetches from masters */
	FUNC1(sc->res, AL_CCU_SPECULATION_CONTROL_OFFSET, 7);

	return (0);
}