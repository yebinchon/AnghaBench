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
struct mii_data {int dummy; } ;
struct awg_softc {int link; int /*<<< orphan*/  stat_ch; int /*<<< orphan*/  miibus; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct awg_softc*) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct awg_softc*) ; 
 struct mii_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC6(void *softc)
{
	struct awg_softc *sc;
	struct mii_data *mii;
	if_t ifp;
	int link;

	sc = softc;
	ifp = sc->ifp;
	mii = FUNC3(sc->miibus);

	FUNC0(sc);

	if ((FUNC4(ifp) & IFF_DRV_RUNNING) == 0)
		return;

	link = sc->link;
	FUNC5(mii);
	if (sc->link && !link)
		FUNC1(sc);

	FUNC2(&sc->stat_ch, hz, awg_tick, sc);
}