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
struct debug_softc {int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORESIGHT_LAR ; 
 int CORESIGHT_UNLOCK ; 
 int /*<<< orphan*/  EDOSLAR ; 
 int /*<<< orphan*/  EDPRCR ; 
 int EDPRCR_CORENPDRQ ; 
 int EDPRCR_COREPURQ ; 
 int /*<<< orphan*/  EDPRSR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct debug_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct debug_softc *sc;
	uint32_t reg;

	sc = FUNC2(dev);

	/* Unlock Coresight */
	FUNC1(sc->res, CORESIGHT_LAR, CORESIGHT_UNLOCK);

	/* Unlock Debug */
	FUNC1(sc->res, EDOSLAR, 0);

	/* Already initialized? */
	reg = FUNC0(sc->res, EDPRCR);
	if (reg & EDPRCR_CORENPDRQ)
		return (0);

	/* Enable power */
	reg |= EDPRCR_COREPURQ;
	FUNC1(sc->res, EDPRCR, reg);

	do {
		reg = FUNC0(sc->res, EDPRSR);
	} while ((reg & EDPRCR_CORENPDRQ) == 0);

	return (0);
}