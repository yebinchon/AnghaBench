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
struct tmc_softc {int etf_configured; int /*<<< orphan*/  dev_type; int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORESIGHT_ETF ; 
 int /*<<< orphan*/  CORESIGHT_ETR ; 
 int /*<<< orphan*/  CORESIGHT_LAR ; 
 int /*<<< orphan*/  CORESIGHT_UNKNOWN ; 
 int /*<<< orphan*/  CORESIGHT_UNLOCK ; 
#define  DEVID_CONFIGTYPE_ETF 129 
#define  DEVID_CONFIGTYPE_ETR 128 
 int DEVID_CONFIGTYPE_M ; 
 int /*<<< orphan*/  TMC_DEVID ; 
 int /*<<< orphan*/  TMC_LAR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tmc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct tmc_softc *sc;
	uint32_t reg;

	sc = FUNC2(dev);

	/* Unlock Coresight */
	FUNC1(sc->res, CORESIGHT_LAR, CORESIGHT_UNLOCK);

	/* Unlock TMC */
	FUNC1(sc->res, TMC_LAR, CORESIGHT_UNLOCK);

	reg = FUNC0(sc->res, TMC_DEVID);
	reg &= DEVID_CONFIGTYPE_M;
	switch (reg) {
	case DEVID_CONFIGTYPE_ETR:
		sc->dev_type = CORESIGHT_ETR;
		FUNC3(dev, "ETR configuration found\n");
		break;
	case DEVID_CONFIGTYPE_ETF:
		sc->dev_type = CORESIGHT_ETF;
		FUNC3(dev, "ETF configuration found\n");
		if (sc->etf_configured == false) {
			FUNC4(dev);
			sc->etf_configured = true;
		}
		break;
	default:
		sc->dev_type = CORESIGHT_UNKNOWN;
		break;
	}

	return (0);
}