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
struct mmc_ios {int bus_width; int power_mode; scalar_t__ timing; unsigned int clock; } ;
struct TYPE_3__ {struct mmc_ios ios; } ;
struct aw_mmc_softc {unsigned int aw_clock; TYPE_2__* aw_mmc_conf; int /*<<< orphan*/  aw_dev; int /*<<< orphan*/  aw_clk_mmc; int /*<<< orphan*/  aw_reg_vqmmc; int /*<<< orphan*/  aw_reg_vmmc; TYPE_1__ aw_host; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {scalar_t__ can_calibrate; scalar_t__ new_timing; } ;

/* Variables and functions */
 int /*<<< orphan*/  AW_MMC_BWDR ; 
 int AW_MMC_BWDR1 ; 
 int AW_MMC_BWDR4 ; 
 int AW_MMC_BWDR8 ; 
 int /*<<< orphan*/  AW_MMC_CKCR ; 
 int AW_MMC_CKCR_DIV ; 
 int /*<<< orphan*/  AW_MMC_GCTL ; 
 int AW_MMC_GCTL_DDR_MOD_SEL ; 
 int /*<<< orphan*/  AW_MMC_NTSR ; 
 int AW_MMC_NTSR_MODE_SELECT ; 
 int FUNC0 (struct aw_mmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AW_MMC_SAMP_DL ; 
 int AW_MMC_SAMP_DL_SW_EN ; 
 int /*<<< orphan*/  FUNC1 (struct aw_mmc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CLK_SET_ROUND_DOWN ; 
 int /*<<< orphan*/  FUNC2 (struct aw_mmc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct aw_mmc_softc*) ; 
 int FUNC4 (struct aw_mmc_softc*,int) ; 
 scalar_t__ bootverbose ; 
 scalar_t__ bus_timing_mmc_ddr52 ; 
 scalar_t__ bus_timing_uhs_ddr50 ; 
#define  bus_width_1 133 
#define  bus_width_4 132 
#define  bus_width_8 131 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct aw_mmc_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
#define  power_off 130 
#define  power_on 129 
#define  power_up 128 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t bus, device_t child)
{
	int error;
	struct aw_mmc_softc *sc;
	struct mmc_ios *ios;
	unsigned int clock;
	uint32_t reg, div = 1;

	sc = FUNC8(bus);

	ios = &sc->aw_host.ios;

	/* Set the bus width. */
	switch (ios->bus_width) {
	case bus_width_1:
		FUNC1(sc, AW_MMC_BWDR, AW_MMC_BWDR1);
		break;
	case bus_width_4:
		FUNC1(sc, AW_MMC_BWDR, AW_MMC_BWDR4);
		break;
	case bus_width_8:
		FUNC1(sc, AW_MMC_BWDR, AW_MMC_BWDR8);
		break;
	}

	switch (ios->power_mode) {
	case power_on:
		break;
	case power_off:
		if (bootverbose)
			FUNC9(sc->aw_dev, "Powering down sd/mmc\n");

		if (sc->aw_reg_vmmc)
			FUNC10(sc->aw_reg_vmmc);
		if (sc->aw_reg_vqmmc)
			FUNC10(sc->aw_reg_vqmmc);

		FUNC3(sc);
		break;
	case power_up:
		if (bootverbose)
			FUNC9(sc->aw_dev, "Powering up sd/mmc\n");

		if (sc->aw_reg_vmmc)
			FUNC11(sc->aw_reg_vmmc);
		if (sc->aw_reg_vqmmc)
			FUNC11(sc->aw_reg_vqmmc);
		FUNC2(sc);
		break;
	};

	/* Enable ddr mode if needed */
	reg = FUNC0(sc, AW_MMC_GCTL);
	if (ios->timing == bus_timing_uhs_ddr50 ||
	  ios->timing == bus_timing_mmc_ddr52)
		reg |= AW_MMC_GCTL_DDR_MOD_SEL;
	else
		reg &= ~AW_MMC_GCTL_DDR_MOD_SEL;
	FUNC1(sc, AW_MMC_GCTL, reg);

	if (ios->clock && ios->clock != sc->aw_clock) {
		sc->aw_clock = clock = ios->clock;

		/* Disable clock */
		error = FUNC4(sc, 0);
		if (error != 0)
			return (error);

		if (ios->timing == bus_timing_mmc_ddr52 &&
		    (sc->aw_mmc_conf->new_timing ||
		    ios->bus_width == bus_width_8)) {
			div = 2;
			clock <<= 1;
		}

		/* Reset the divider. */
		reg = FUNC0(sc, AW_MMC_CKCR);
		reg &= ~AW_MMC_CKCR_DIV;
		reg |= div - 1;
		FUNC1(sc, AW_MMC_CKCR, reg);

		/* New timing mode if needed */
		if (sc->aw_mmc_conf->new_timing) {
			reg = FUNC0(sc, AW_MMC_NTSR);
			reg |= AW_MMC_NTSR_MODE_SELECT;
			FUNC1(sc, AW_MMC_NTSR, reg);
		}

		/* Set the MMC clock. */
		error = FUNC5(sc->aw_clk_mmc);
		if (error != 0 && bootverbose)
			FUNC9(sc->aw_dev,
			  "failed to disable mmc clock: %d\n", error);
		error = FUNC7(sc->aw_clk_mmc, clock,
		    CLK_SET_ROUND_DOWN);
		if (error != 0) {
			FUNC9(sc->aw_dev,
			    "failed to set frequency to %u Hz: %d\n",
			    clock, error);
			return (error);
		}
		error = FUNC6(sc->aw_clk_mmc);
		if (error != 0 && bootverbose)
			FUNC9(sc->aw_dev,
			  "failed to re-enable mmc clock: %d\n", error);

		if (sc->aw_mmc_conf->can_calibrate)
			FUNC1(sc, AW_MMC_SAMP_DL, AW_MMC_SAMP_DL_SW_EN);

		/* Enable clock. */
		error = FUNC4(sc, 1);
		if (error != 0)
			return (error);
	}


	return (0);
}