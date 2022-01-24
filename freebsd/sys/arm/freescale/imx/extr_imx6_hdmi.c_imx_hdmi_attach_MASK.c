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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/ * sc_mem_res; scalar_t__ sc_mem_rid; int /*<<< orphan*/  sc_get_i2c_dev; int /*<<< orphan*/  sc_dev; } ;
struct imx_hdmi_softc {scalar_t__ i2c_xref; TYPE_1__ base; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  i2c_xref ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IOMUXC_GPR3 ; 
 int /*<<< orphan*/  IOMUXC_GPR3_HDMI_IPU1_DI0 ; 
 int /*<<< orphan*/  IOMUXC_GPR3_HDMI_MASK ; 
 int FUNC0 (scalar_t__,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct imx_hdmi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_hdmi_get_i2c_dev ; 
 int /*<<< orphan*/  imx_hdmi_init ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct imx_hdmi_softc *sc;
	int err;
	uint32_t gpr3;
	phandle_t node, i2c_xref;

	sc = FUNC3(dev);
	sc->base.sc_dev = dev;
	sc->base.sc_get_i2c_dev = imx_hdmi_get_i2c_dev;
	err = 0;

	/* Allocate memory resources. */
	sc->base.sc_mem_rid = 0;
	sc->base.sc_mem_res = FUNC1(dev, SYS_RES_MEMORY,
	    &sc->base.sc_mem_rid, RF_ACTIVE);
	if (sc->base.sc_mem_res == NULL) {
		FUNC4(dev, "Cannot allocate memory resources\n");
		err = ENXIO;
		goto out;
	}

	node = FUNC9(dev);
	if (FUNC0(node, "ddc-i2c-bus", &i2c_xref, sizeof(i2c_xref)) == -1)
		sc->i2c_xref = 0;
	else
		sc->i2c_xref = i2c_xref;

	FUNC5();

	gpr3 = FUNC7(IOMUXC_GPR3);
	gpr3 &= ~(IOMUXC_GPR3_HDMI_MASK);
	gpr3 |= IOMUXC_GPR3_HDMI_IPU1_DI0;
	FUNC8(IOMUXC_GPR3, gpr3);

	/* Further HDMI init requires interrupts for i2c transfers. */
	FUNC2(imx_hdmi_init, dev);
	return (0);

out:
	FUNC6(dev);

	return (err);
}