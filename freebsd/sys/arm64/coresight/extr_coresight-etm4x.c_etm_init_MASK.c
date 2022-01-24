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
struct etm_softc {int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORESIGHT_LAR ; 
 int /*<<< orphan*/  CORESIGHT_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TRCIDR1_TRCARCHMAJ_M ; 
 int TRCIDR1_TRCARCHMAJ_S ; 
 int TRCIDR1_TRCARCHMIN_M ; 
 int TRCIDR1_TRCARCHMIN_S ; 
 int /*<<< orphan*/  TRCOSLAR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct etm_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct etm_softc *sc;
	uint32_t reg;

	sc = FUNC3(dev);

	/* Unlocking Coresight */
	FUNC2(sc->res, CORESIGHT_LAR, CORESIGHT_UNLOCK);

	/* Unlocking ETM */
	FUNC2(sc->res, TRCOSLAR, 0);

	reg = FUNC1(sc->res, FUNC0(1));
	FUNC4("ETM Version: %d.%d\n",
	    (reg & TRCIDR1_TRCARCHMAJ_M) >> TRCIDR1_TRCARCHMAJ_S,
	    (reg & TRCIDR1_TRCARCHMIN_M) >> TRCIDR1_TRCARCHMIN_S);

	return (0);
}