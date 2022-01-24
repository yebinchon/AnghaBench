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
struct aac_softc {int /*<<< orphan*/  aac_ich; int /*<<< orphan*/  aac_dev; int /*<<< orphan*/  aac_state; int /*<<< orphan*/  aac_io_lock; } ;
struct aac_mntinforesp {int MntRespCount; } ;
struct aac_fib {int dummy; } ;

/* Variables and functions */
 int AAC_MAX_CONTAINERS ; 
 int /*<<< orphan*/  AAC_STATE_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*) ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*,struct aac_mntinforesp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_softc*,struct aac_fib**) ; 
 struct aac_mntinforesp* FUNC3 (struct aac_softc*,struct aac_fib*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aac_softc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(void *arg)
{
	struct aac_softc *sc;
	struct aac_fib *fib;
	struct aac_mntinforesp *mir;
	int count = 0, i = 0;

	sc = (struct aac_softc *)arg;
	FUNC8(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	FUNC9(&sc->aac_io_lock);
	FUNC2(sc, &fib);

	/* loop over possible containers */
	do {
		if ((mir = FUNC3(sc, fib, i)) == NULL)
			continue;
		if (i == 0)
			count = mir->MntRespCount;
		FUNC1(sc, mir, 0);
		i++;
	} while ((i < count) && (i < AAC_MAX_CONTAINERS));

	FUNC4(sc);
	FUNC10(&sc->aac_io_lock);

	/* mark the controller up */
	sc->aac_state &= ~AAC_STATE_SUSPEND;

	/* poke the bus to actually attach the child devices */
	if (FUNC5(sc->aac_dev))
		FUNC7(sc->aac_dev, "bus_generic_attach failed\n");

	/* disconnect ourselves from the intrhook chain */
	FUNC6(&sc->aac_ich);

	/* enable interrupts now */
	FUNC0(sc);
}