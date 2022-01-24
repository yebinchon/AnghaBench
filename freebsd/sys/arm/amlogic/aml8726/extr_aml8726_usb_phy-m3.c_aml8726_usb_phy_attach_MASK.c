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
struct aml8726_usb_phy_softc {int npwr_en; int /*<<< orphan*/  res; struct aml8726_usb_phy_gpio* pwr_en; int /*<<< orphan*/  dev; } ;
struct aml8726_usb_phy_gpio {void* pol; void* pin; int /*<<< orphan*/ * dev; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  void* pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AML_USB_PHY_CFG_A_PHYS_RST ; 
 int AML_USB_PHY_CFG_A_PLL_RST ; 
 int AML_USB_PHY_CFG_A_POR ; 
 int AML_USB_PHY_CFG_A_RST ; 
 int AML_USB_PHY_CFG_B_PHYS_RST ; 
 int AML_USB_PHY_CFG_B_PLL_RST ; 
 int AML_USB_PHY_CFG_B_POR ; 
 int AML_USB_PHY_CFG_B_RST ; 
 int AML_USB_PHY_CFG_CLK_DETECTED ; 
 int AML_USB_PHY_CFG_CLK_DIV_MASK ; 
 int AML_USB_PHY_CFG_CLK_DIV_SHIFT ; 
 int AML_USB_PHY_CFG_CLK_EN ; 
 int AML_USB_PHY_CFG_CLK_SEL_MASK ; 
 int AML_USB_PHY_CFG_CLK_SEL_XTAL ; 
 int /*<<< orphan*/  AML_USB_PHY_CFG_REG ; 
 int /*<<< orphan*/  AML_USB_PHY_MISC_A_REG ; 
 int /*<<< orphan*/  AML_USB_PHY_MISC_B_REG ; 
 int AML_USB_PHY_MISC_ID_OVERIDE_DEVICE ; 
 int AML_USB_PHY_MISC_ID_OVERIDE_EN ; 
 int AML_USB_PHY_MISC_ID_OVERIDE_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_usb_phy_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aml8726_usb_phy_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_usb_phy_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/ * FUNC6 (void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC8 (void**) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 scalar_t__ FUNC11 (char*,int*) ; 
 int /*<<< orphan*/  aml8726_usb_phy_spec ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aml8726_usb_phy_softc* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct aml8726_usb_phy_gpio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct aml8726_usb_phy_softc *sc = FUNC14(dev);
	int err;
	int npwr_en;
	pcell_t *prop;
	phandle_t node;
	ssize_t len;
	uint32_t div;
	uint32_t i;
	uint32_t mode_a;
	uint32_t mode_b;
	uint32_t value;

	sc->dev = dev;

	if (FUNC11("/soc/usb@c9040000", &mode_a) != 0) {
		FUNC15(dev, "missing usb@c9040000 node in FDT\n");
		return (ENXIO);
	}

	if (FUNC11("/soc/usb@c90c0000", &mode_b) != 0) {
		FUNC15(dev, "missing usb@c90c0000 node in FDT\n");
		return (ENXIO);
	}

	if (FUNC12(dev, aml8726_usb_phy_spec, sc->res)) {
		FUNC15(dev, "can not allocate resources for device\n");
		return (ENXIO);
	}

	node = FUNC18(dev);

	err = 0;

	len = FUNC7(node, "usb-pwr-en",
	    3 * sizeof(pcell_t), (void **)&prop);
	npwr_en = (len > 0) ? len : 0;

	sc->npwr_en = 0;
	sc->pwr_en = (struct aml8726_usb_phy_gpio *)
	    FUNC17(npwr_en * sizeof (*sc->pwr_en), M_DEVBUF, M_WAITOK);

	for (i = 0; i < npwr_en; i++) {
		sc->pwr_en[i].dev = FUNC6(prop[i * 3]);
		sc->pwr_en[i].pin = prop[i * 3 + 1];
		sc->pwr_en[i].pol = prop[i * 3 + 2];

		if (sc->pwr_en[i].dev == NULL) {
			err = 1;
			break;
		}
	}

	FUNC8(prop);

	if (err) {
		FUNC15(dev, "unable to parse gpio\n");
		goto fail;
	}

	/* Turn on power by setting pin and then enabling output driver. */
	for (i = 0; i < npwr_en; i++) {
		if (FUNC4(sc->pwr_en[i].dev, sc->pwr_en[i].pin,
		    FUNC10(sc->pwr_en[i].pol)) != 0 ||
		    FUNC5(sc->pwr_en[i].dev, sc->pwr_en[i].pin,
		    GPIO_PIN_OUTPUT) != 0) {
			FUNC15(dev,
			    "could not use gpio to control power\n");
			goto fail;
		}

		sc->npwr_en++;
	}

	/*
	 * Configure the clock source and divider.
	 */

	div = 2;

	value = FUNC1(sc, AML_USB_PHY_CFG_REG);

	value &= ~(AML_USB_PHY_CFG_CLK_DIV_MASK | AML_USB_PHY_CFG_CLK_SEL_MASK);

	value &= ~(AML_USB_PHY_CFG_A_RST | AML_USB_PHY_CFG_B_RST);
	value &= ~(AML_USB_PHY_CFG_A_PLL_RST | AML_USB_PHY_CFG_B_PLL_RST);
	value &= ~(AML_USB_PHY_CFG_A_PHYS_RST | AML_USB_PHY_CFG_B_PHYS_RST);
	value &= ~(AML_USB_PHY_CFG_A_POR | AML_USB_PHY_CFG_B_POR);

	value |= AML_USB_PHY_CFG_CLK_SEL_XTAL;
	value |= ((div - 1) << AML_USB_PHY_CFG_CLK_DIV_SHIFT) &
	    AML_USB_PHY_CFG_CLK_DIV_MASK;
	value |= AML_USB_PHY_CFG_CLK_EN;

	FUNC2(sc, AML_USB_PHY_CFG_REG, value);
	FUNC0(sc, AML_USB_PHY_CFG_REG);

	/*
	 * Issue the reset sequence.
	 */

	value |= (AML_USB_PHY_CFG_A_RST | AML_USB_PHY_CFG_B_RST);

	FUNC2(sc, AML_USB_PHY_CFG_REG, value);
	FUNC0(sc, AML_USB_PHY_CFG_REG);

	FUNC3(200);

	value &= ~(AML_USB_PHY_CFG_A_RST | AML_USB_PHY_CFG_B_RST);

	FUNC2(sc, AML_USB_PHY_CFG_REG, value);
	FUNC0(sc, AML_USB_PHY_CFG_REG);

	FUNC3(200);

	value |= (AML_USB_PHY_CFG_A_PLL_RST | AML_USB_PHY_CFG_B_PLL_RST);

	FUNC2(sc, AML_USB_PHY_CFG_REG, value);
	FUNC0(sc, AML_USB_PHY_CFG_REG);

	FUNC3(200);

	value &= ~(AML_USB_PHY_CFG_A_PLL_RST | AML_USB_PHY_CFG_B_PLL_RST);

	FUNC2(sc, AML_USB_PHY_CFG_REG, value);
	FUNC0(sc, AML_USB_PHY_CFG_REG);

	FUNC3(200);

	value |= (AML_USB_PHY_CFG_A_PHYS_RST | AML_USB_PHY_CFG_B_PHYS_RST);

	FUNC2(sc, AML_USB_PHY_CFG_REG, value);
	FUNC0(sc, AML_USB_PHY_CFG_REG);

	FUNC3(200);

	value &= ~(AML_USB_PHY_CFG_A_PHYS_RST | AML_USB_PHY_CFG_B_PHYS_RST);

	FUNC2(sc, AML_USB_PHY_CFG_REG, value);
	FUNC0(sc, AML_USB_PHY_CFG_REG);

	FUNC3(200);

	value |= (AML_USB_PHY_CFG_A_POR | AML_USB_PHY_CFG_B_POR);

	FUNC2(sc, AML_USB_PHY_CFG_REG, value);
	FUNC0(sc, AML_USB_PHY_CFG_REG);

	FUNC3(200);

	/*
	 * Enable by clearing the power on reset.
	 */

	value &= ~(AML_USB_PHY_CFG_A_POR | AML_USB_PHY_CFG_B_POR);

	FUNC2(sc, AML_USB_PHY_CFG_REG, value);

	FUNC0(sc, AML_USB_PHY_CFG_REG);

	FUNC3(200);

	/*
	 * Check if the clock was detected.
	 */
	value = FUNC1(sc, AML_USB_PHY_CFG_REG);
	if ((value & AML_USB_PHY_CFG_CLK_DETECTED) !=
	    AML_USB_PHY_CFG_CLK_DETECTED)
		FUNC15(dev, "PHY Clock not detected\n");

	/*
	 * Configure the mode for each port.
	 */

	value = FUNC1(sc, AML_USB_PHY_MISC_A_REG);

	value &= ~(AML_USB_PHY_MISC_ID_OVERIDE_EN |
	    AML_USB_PHY_MISC_ID_OVERIDE_DEVICE |
	    AML_USB_PHY_MISC_ID_OVERIDE_HOST);
	value |= mode_a;

	FUNC2(sc, AML_USB_PHY_MISC_A_REG, value);

	value = FUNC1(sc, AML_USB_PHY_MISC_B_REG);

	value &= ~(AML_USB_PHY_MISC_ID_OVERIDE_EN |
	    AML_USB_PHY_MISC_ID_OVERIDE_DEVICE |
	    AML_USB_PHY_MISC_ID_OVERIDE_HOST);
	value |= mode_b;

	FUNC2(sc, AML_USB_PHY_MISC_B_REG, value);

	FUNC0(sc, AML_USB_PHY_MISC_B_REG);

	return (0);

fail:
	/* In the event of problems attempt to turn things back off. */
	i = sc->npwr_en;
	while (i-- != 0) {
		FUNC4(sc->pwr_en[i].dev, sc->pwr_en[i].pin,
		    FUNC9(sc->pwr_en[i].pol));
	}

	FUNC16 (sc->pwr_en, M_DEVBUF);
	sc->pwr_en = NULL;

	FUNC13(dev, aml8726_usb_phy_spec, sc->res);

	return (ENXIO);
}