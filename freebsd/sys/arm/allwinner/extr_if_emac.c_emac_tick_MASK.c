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
struct emac_softc {int /*<<< orphan*/  emac_tick_ch; int /*<<< orphan*/  emac_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct emac_softc*) ; 
 struct mii_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct emac_softc *sc;
	struct mii_data *mii;

	sc = (struct emac_softc *)arg;
	mii = FUNC1(sc->emac_miibus);
	FUNC3(mii);

	FUNC2(sc);
	FUNC0(&sc->emac_tick_ch, hz, emac_tick, sc);
}