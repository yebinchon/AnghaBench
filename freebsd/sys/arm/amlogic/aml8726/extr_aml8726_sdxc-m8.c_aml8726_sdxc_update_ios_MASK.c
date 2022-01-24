#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct mmc_ios {int bus_width; int clock; int vdd; int power_mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  pol; int /*<<< orphan*/  pin; int /*<<< orphan*/ * dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  pin; int /*<<< orphan*/ * dev; } ;
struct TYPE_5__ {struct mmc_ios ios; } ;
struct aml8726_sdxc_softc {int ref_freq; int* voltages; int /*<<< orphan*/  dev; TYPE_3__ card_rst; TYPE_2__ vselect; TYPE_1__ host; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_8__ {int voltage; int freq; int rx_phase; } ;

/* Variables and functions */
 int /*<<< orphan*/  AML_SDXC_CLK2_REG ; 
 int AML_SDXC_CLK2_RX_PHASE_SHIFT ; 
 int AML_SDXC_CLK2_SD_PHASE_SHIFT ; 
 unsigned int AML_SDXC_CLK_CNTRL_CLK_DIV_MASK ; 
 unsigned int AML_SDXC_CLK_CNTRL_CLK_DIV_SHIFT ; 
 int AML_SDXC_CLK_CNTRL_CLK_MODULE_EN ; 
 int AML_SDXC_CLK_CNTRL_CLK_SEL_MASK ; 
 int AML_SDXC_CLK_CNTRL_CLK_SEL_SHIFT ; 
 int AML_SDXC_CLK_CNTRL_MEM_PWR_MASK ; 
 int AML_SDXC_CLK_CNTRL_MEM_PWR_ON ; 
 int /*<<< orphan*/  AML_SDXC_CLK_CNTRL_REG ; 
 int AML_SDXC_CLK_CNTRL_RX_CLK_EN ; 
 int AML_SDXC_CLK_CNTRL_SD_CLK_EN ; 
 int AML_SDXC_CLK_CNTRL_TX_CLK_EN ; 
 int AML_SDXC_CNTRL_BUS_WIDTH_1 ; 
 int AML_SDXC_CNTRL_BUS_WIDTH_4 ; 
 int AML_SDXC_CNTRL_BUS_WIDTH_8 ; 
 int /*<<< orphan*/  AML_SDXC_CNTRL_REG ; 
 int AML_SDXC_CNTRL_RX_ENDIAN_SHIFT ; 
 int AML_SDXC_CNTRL_RX_PERIOD_SHIFT ; 
 int AML_SDXC_CNTRL_RX_TIMEOUT_SHIFT ; 
 int AML_SDXC_CNTRL_TX_ENDIAN_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_sdxc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aml8726_sdxc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_sdxc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_4__* aml8726_sdxc_clk_phases ; 
 int FUNC8 (struct aml8726_sdxc_softc*) ; 
 int FUNC9 (struct aml8726_sdxc_softc*) ; 
#define  bus_width_1 133 
#define  bus_width_4 132 
#define  bus_width_8 131 
 struct aml8726_sdxc_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
#define  power_off 130 
#define  power_on 129 
#define  power_up 128 

__attribute__((used)) static int
FUNC12(device_t bus, device_t child)
{
	struct aml8726_sdxc_softc *sc = FUNC10(bus);
	struct mmc_ios *ios = &sc->host.ios;
	unsigned int divisor;
	int error;
	int i;
	uint32_t cctlr;
	uint32_t clk2r;
	uint32_t ctlr;
	uint32_t freq;

	ctlr = (7 << AML_SDXC_CNTRL_TX_ENDIAN_SHIFT) |
	    (7 << AML_SDXC_CNTRL_RX_ENDIAN_SHIFT) |
	    (0xf << AML_SDXC_CNTRL_RX_PERIOD_SHIFT) |
	    (0x7f << AML_SDXC_CNTRL_RX_TIMEOUT_SHIFT);

	switch (ios->bus_width) {
	case bus_width_8:
		ctlr |= AML_SDXC_CNTRL_BUS_WIDTH_8;
		break;
	case bus_width_4:
		ctlr |= AML_SDXC_CNTRL_BUS_WIDTH_4;
		break;
	case bus_width_1:
		ctlr |= AML_SDXC_CNTRL_BUS_WIDTH_1;
		break;
	default:
		return (EINVAL);
	}

	FUNC2(sc, AML_SDXC_CNTRL_REG, ctlr);

	/*
	 * Disable clocks and then clock module prior to setting desired values.
	 */
	cctlr = FUNC1(sc, AML_SDXC_CLK_CNTRL_REG);
	cctlr &= ~(AML_SDXC_CLK_CNTRL_TX_CLK_EN | AML_SDXC_CLK_CNTRL_RX_CLK_EN |
	    AML_SDXC_CLK_CNTRL_SD_CLK_EN);
	FUNC2(sc, AML_SDXC_CLK_CNTRL_REG, cctlr);
	FUNC0(sc, AML_SDXC_CLK_CNTRL_REG);
	cctlr &= ~AML_SDXC_CLK_CNTRL_CLK_MODULE_EN;
	FUNC2(sc, AML_SDXC_CLK_CNTRL_REG, cctlr);
	FUNC0(sc, AML_SDXC_CLK_CNTRL_REG);

	/*
	 *                  aml8726-m8
	 *
	 * Clock select 1   fclk_div2 (1.275 GHz)
	 */
	cctlr &= ~AML_SDXC_CLK_CNTRL_CLK_SEL_MASK;
	cctlr |= (1 << AML_SDXC_CLK_CNTRL_CLK_SEL_SHIFT);

	divisor = sc->ref_freq / ios->clock - 1;
	if (divisor == 0 || divisor == -1)
		divisor = 1;
	if ((sc->ref_freq / (divisor + 1)) > ios->clock)
		divisor += 1;
	if (divisor > (AML_SDXC_CLK_CNTRL_CLK_DIV_MASK >>
	    AML_SDXC_CLK_CNTRL_CLK_DIV_SHIFT))
		divisor = AML_SDXC_CLK_CNTRL_CLK_DIV_MASK >>
		    AML_SDXC_CLK_CNTRL_CLK_DIV_SHIFT;

	cctlr &= ~AML_SDXC_CLK_CNTRL_CLK_DIV_MASK;
	cctlr |= divisor << AML_SDXC_CLK_CNTRL_CLK_DIV_SHIFT;

	cctlr &= ~AML_SDXC_CLK_CNTRL_MEM_PWR_MASK;
	cctlr |= AML_SDXC_CLK_CNTRL_MEM_PWR_ON;

	FUNC2(sc, AML_SDXC_CLK_CNTRL_REG, cctlr);
	FUNC0(sc, AML_SDXC_CLK_CNTRL_REG);

	/*
	 * Enable clock module and then clocks after setting desired values.
	 */
	cctlr |= AML_SDXC_CLK_CNTRL_CLK_MODULE_EN;
	FUNC2(sc, AML_SDXC_CLK_CNTRL_REG, cctlr);
	FUNC0(sc, AML_SDXC_CLK_CNTRL_REG);
	cctlr |= AML_SDXC_CLK_CNTRL_TX_CLK_EN | AML_SDXC_CLK_CNTRL_RX_CLK_EN |
	    AML_SDXC_CLK_CNTRL_SD_CLK_EN;
	FUNC2(sc, AML_SDXC_CLK_CNTRL_REG, cctlr);
	FUNC0(sc, AML_SDXC_CLK_CNTRL_REG);

	freq = sc->ref_freq / divisor;

	for (i = 0; aml8726_sdxc_clk_phases[i].voltage; i++) {
		if ((aml8726_sdxc_clk_phases[i].voltage &
		    (1 << ios->vdd)) != 0 &&
		    freq > aml8726_sdxc_clk_phases[i].freq)
			break;
		if (aml8726_sdxc_clk_phases[i].freq == 0)
			break;
	}

	clk2r = (1 << AML_SDXC_CLK2_SD_PHASE_SHIFT) |
	    (aml8726_sdxc_clk_phases[i].rx_phase <<
	    AML_SDXC_CLK2_RX_PHASE_SHIFT);
	FUNC2(sc, AML_SDXC_CLK2_REG, clk2r);
	FUNC0(sc, AML_SDXC_CLK2_REG);

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
			error = FUNC4(sc->vselect.dev,
			    sc->vselect.pin, i);
		}
		break;
	case power_on:
		error = FUNC9(sc);
		if (error)
			break;

		if (sc->card_rst.dev != NULL) {
			if (FUNC4(sc->card_rst.dev, sc->card_rst.pin,
			    FUNC7(sc->card_rst.pol)) != 0 ||
			    FUNC5(sc->card_rst.dev,
			    sc->card_rst.pin,
			    GPIO_PIN_OUTPUT) != 0)
				error = ENXIO;

			FUNC3(5);

			if (FUNC4(sc->card_rst.dev, sc->card_rst.pin,
			    FUNC6(sc->card_rst.pol)) != 0)
				error = ENXIO;

			FUNC3(5);

			if (error) {
				FUNC11(sc->dev,
				    "could not use gpio to reset card\n");
				break;
			}
		}
		break;
	case power_off:
		error = FUNC8(sc);
		break;
	default:
		return (EINVAL);
	}

	return (error);
}