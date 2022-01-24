#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct mmc_ios {int bus_width; int power_mode; int vdd; int /*<<< orphan*/  clock; } ;
struct TYPE_4__ {int /*<<< orphan*/  pin; int /*<<< orphan*/ * dev; } ;
struct TYPE_3__ {struct mmc_ios ios; } ;
struct aml8726_mmc_softc {int* voltages; TYPE_2__ vselect; TYPE_1__ host; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AML_MMC_CONFIG_BUS_WIDTH_1 ; 
 int AML_MMC_CONFIG_BUS_WIDTH_4 ; 
 int AML_MMC_CONFIG_CMD_ARG_BITS_SHIFT ; 
 int AML_MMC_CONFIG_CMD_CLK_DIV_SHIFT ; 
 int AML_MMC_CONFIG_DMA_ENDIAN_SBW ; 
 int /*<<< orphan*/  AML_MMC_CONFIG_REG ; 
 int AML_MMC_CONFIG_WR_CRC_STAT_SHIFT ; 
 int AML_MMC_CONFIG_WR_DELAY_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_mmc_softc*,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct aml8726_mmc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct aml8726_mmc_softc*) ; 
 int FUNC4 (struct aml8726_mmc_softc*) ; 
#define  bus_width_1 132 
#define  bus_width_4 131 
 struct aml8726_mmc_softc* FUNC5 (int /*<<< orphan*/ ) ; 
#define  power_off 130 
#define  power_on 129 
#define  power_up 128 

__attribute__((used)) static int
FUNC6(device_t bus, device_t child)
{
	struct aml8726_mmc_softc *sc = FUNC5(bus);
	struct mmc_ios *ios = &sc->host.ios;
	int error;
	int i;
	uint32_t cfgr;

	cfgr = (2 << AML_MMC_CONFIG_WR_CRC_STAT_SHIFT) |
	    (2 << AML_MMC_CONFIG_WR_DELAY_SHIFT) |
	    AML_MMC_CONFIG_DMA_ENDIAN_SBW |
	    (39 << AML_MMC_CONFIG_CMD_ARG_BITS_SHIFT);

	switch (ios->bus_width) {
	case bus_width_4:
		cfgr |= AML_MMC_CONFIG_BUS_WIDTH_4;
		break;
	case bus_width_1:
		cfgr |= AML_MMC_CONFIG_BUS_WIDTH_1;
		break;
	default:
		return (EINVAL);
	}

	cfgr |= FUNC2(sc, ios->clock) <<
	    AML_MMC_CONFIG_CMD_CLK_DIV_SHIFT;

	FUNC0(sc, AML_MMC_CONFIG_REG, cfgr);

	error = 0;

	switch (ios->power_mode) {
	case power_up:
		/*
		 * Configure and power on the regulator so that the
		 * voltage stabilizes prior to powering on the card.
		 */
		if (sc->vselect.dev != NULL) {
			for (i = 0; i < 2; i++)
				if ((sc->voltages[i] & (1 << ios->vdd)) != 0)
					break;
			if (i >= 2)
				return (EINVAL);
			error = FUNC1(sc->vselect.dev,
			    sc->vselect.pin, i);
		}
		break;
	case power_on:
		error = FUNC4(sc);
		break;
	case power_off:
		error = FUNC3(sc);
		break;
	default:
		return (EINVAL);
	}

	return (error);
}