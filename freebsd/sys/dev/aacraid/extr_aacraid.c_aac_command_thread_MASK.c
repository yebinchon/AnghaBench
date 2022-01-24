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
struct aac_softc {int aifflags; int /*<<< orphan*/  aac_dev; int /*<<< orphan*/  aac_io_lock; TYPE_1__* aac_common; int /*<<< orphan*/  aifthread; } ;
struct TYPE_2__ {scalar_t__* ac_printf; } ;

/* Variables and functions */
 int AAC_AIFFLAGS_ALLOCFIBS ; 
 int AAC_AIFFLAGS_EXIT ; 
 int AAC_AIFFLAGS_PENDING ; 
 int AAC_AIFFLAGS_RUNNING ; 
 int AAC_PERIODIC_INTERVAL ; 
 int EWOULDBLOCK ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_softc*,char*,char*) ; 
 int hz ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct aac_softc *sc)
{
	int retval;

	FUNC5(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	FUNC7(&sc->aac_io_lock);
	sc->aifflags = AAC_AIFFLAGS_RUNNING;

	while ((sc->aifflags & AAC_AIFFLAGS_EXIT) == 0) {

		retval = 0;
		if ((sc->aifflags & AAC_AIFFLAGS_PENDING) == 0)
			retval = FUNC6(sc->aifthread, &sc->aac_io_lock, PRIBIO,
					"aacraid_aifthd", AAC_PERIODIC_INTERVAL * hz);

		/*
		 * First see if any FIBs need to be allocated.  This needs
		 * to be called without the driver lock because contigmalloc
		 * will grab Giant, and would result in an LOR.
		 */
		if ((sc->aifflags & AAC_AIFFLAGS_ALLOCFIBS) != 0) {
			FUNC0(sc);
			sc->aifflags &= ~AAC_AIFFLAGS_ALLOCFIBS;
			FUNC4(sc);
		}

		/*
		 * While we're here, check to see if any commands are stuck.
		 * This is pretty low-priority, so it's ok if it doesn't
		 * always fire.
		 */
		if (retval == EWOULDBLOCK)
			FUNC3(sc);

		/* Check the hardware printf message buffer */
		if (sc->aac_common->ac_printf[0] != 0)
			FUNC2(sc);
	}
	sc->aifflags &= ~AAC_AIFFLAGS_RUNNING;
	FUNC8(&sc->aac_io_lock);
	FUNC9(sc->aac_dev);

	FUNC1(0);
}