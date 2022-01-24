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
struct TYPE_2__ {int fb_cmsize; int /*<<< orphan*/  fb_depth; int /*<<< orphan*/  fb_cmap; int /*<<< orphan*/  fb_name; } ;
struct ipu3sc_softc {int /*<<< orphan*/  dev; void* dc_ioh; int /*<<< orphan*/  iot; void* dmfc_ioh; void* di0_ioh; void* di1_ioh; void* dp_ioh; void* idmac_ioh; void* cpmem_ioh; int /*<<< orphan*/ * sc_fbd; TYPE_1__ sc_info; int /*<<< orphan*/ * ih; void* dctmpl_ioh; void* cm_ioh; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  uintptr_t pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  void* bus_space_handle_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IMX51CLK_IPU_HSP_CLK_ROOT ; 
 int IMX51_INT_IPUV3 ; 
 int /*<<< orphan*/  IPL_BIO ; 
 uintptr_t FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  IPU_CM_SIZE ; 
 uintptr_t FUNC1 (uintptr_t) ; 
 int /*<<< orphan*/  IPU_CPMEM_SIZE ; 
 uintptr_t FUNC2 (uintptr_t) ; 
 int /*<<< orphan*/  IPU_DCTMPL_SIZE ; 
 uintptr_t FUNC3 (uintptr_t) ; 
 int /*<<< orphan*/  IPU_DC_SIZE ; 
 uintptr_t FUNC4 (uintptr_t) ; 
 int /*<<< orphan*/  IPU_DI0_SIZE ; 
 uintptr_t FUNC5 (uintptr_t) ; 
 int /*<<< orphan*/  IPU_DI1_SIZE ; 
 uintptr_t FUNC6 (uintptr_t) ; 
 int /*<<< orphan*/  IPU_DMFC_SIZE ; 
 uintptr_t FUNC7 (uintptr_t) ; 
 int /*<<< orphan*/  IPU_DP_SIZE ; 
 uintptr_t FUNC8 (uintptr_t) ; 
 int /*<<< orphan*/  IPU_IDMAC_SIZE ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,uintptr_t*,int) ; 
 scalar_t__ bootverbose ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct ipu3sc_softc* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ipu3sc_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct ipu3sc_softc*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipu3sc_softc* ipu3sc_softc ; 
 int /*<<< orphan*/  ipuv3intr ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
	struct ipu3sc_softc *sc = FUNC15(dev);
	bus_space_tag_t iot;
	bus_space_handle_t ioh;
	phandle_t node;
	pcell_t reg;
 	int err;
	uintptr_t base;

	ipu3sc_softc = sc;

	if (bootverbose)
		FUNC17(dev, "clock gate status is %d\n",
		    FUNC18(IMX51CLK_IPU_HSP_CLK_ROOT));

	sc->dev = dev;

	sc = FUNC15(dev);
	sc->iot = iot = fdtbus_bs_tag;

	/*
	 * Retrieve the device address based on the start address in the
	 * DTS.  The DTS for i.MX51 specifies 0x5e000000 as the first register
	 * address, so we just subtract IPU_CM_BASE to get the offset at which
	 * the IPU device was memory mapped.
	 * On i.MX53, the offset is 0.
	 */
	node = FUNC22(dev);
	if ((FUNC9(node, "reg", &reg, sizeof(reg))) <= 0)
		base = 0;
	else
		base = reg - FUNC0(0);
	/* map controller registers */
	err = FUNC11(iot, FUNC0(base), IPU_CM_SIZE, 0, &ioh);
	if (err)
		goto fail_retarn_cm;
	sc->cm_ioh = ioh;

	/* map Display Multi FIFO Controller registers */
	err = FUNC11(iot, FUNC6(base), IPU_DMFC_SIZE, 0, &ioh);
	if (err)
		goto fail_retarn_dmfc;
	sc->dmfc_ioh = ioh;

	/* map Display Interface 0 registers */
	err = FUNC11(iot, FUNC4(base), IPU_DI0_SIZE, 0, &ioh);
	if (err)
		goto fail_retarn_di0;
	sc->di0_ioh = ioh;

	/* map Display Interface 1 registers */
	err = FUNC11(iot, FUNC5(base), IPU_DI0_SIZE, 0, &ioh);
	if (err)
		goto fail_retarn_di1;
	sc->di1_ioh = ioh;

	/* map Display Processor registers */
	err = FUNC11(iot, FUNC7(base), IPU_DP_SIZE, 0, &ioh);
	if (err)
		goto fail_retarn_dp;
	sc->dp_ioh = ioh;

	/* map Display Controller registers */
	err = FUNC11(iot, FUNC3(base), IPU_DC_SIZE, 0, &ioh);
	if (err)
		goto fail_retarn_dc;
	sc->dc_ioh = ioh;

	/* map Image DMA Controller registers */
	err = FUNC11(iot, FUNC8(base), IPU_IDMAC_SIZE, 0,
	    &ioh);
	if (err)
		goto fail_retarn_idmac;
	sc->idmac_ioh = ioh;

	/* map CPMEM registers */
	err = FUNC11(iot, FUNC1(base), IPU_CPMEM_SIZE, 0,
	    &ioh);
	if (err)
		goto fail_retarn_cpmem;
	sc->cpmem_ioh = ioh;

	/* map DCTEMPL registers */
	err = FUNC11(iot, FUNC2(base), IPU_DCTMPL_SIZE, 0,
	    &ioh);
	if (err)
		goto fail_retarn_dctmpl;
	sc->dctmpl_ioh = ioh;

#ifdef notyet
	sc->ih = imx51_ipuv3_intr_establish(IMX51_INT_IPUV3, IPL_BIO,
	    ipuv3intr, sc);
	if (sc->ih == NULL) {
		device_printf(sc->dev,
		    "unable to establish interrupt at irq %d\n",
		    IMX51_INT_IPUV3);
		return (ENXIO);
	}
#endif

	/*
	 * We have to wait until interrupts are enabled. 
	 * Mailbox relies on it to get data from VideoCore
	 */
	FUNC20(sc);

	sc->sc_info.fb_name = FUNC14(dev);

	FUNC21(sc->sc_info.fb_cmap, sc->sc_info.fb_depth);
	sc->sc_info.fb_cmsize = 16;

	/* Ask newbus to attach framebuffer device to me. */
	sc->sc_fbd = FUNC13(dev, "fbd", FUNC16(dev));
	if (sc->sc_fbd == NULL)
		FUNC17(dev, "Can't attach fbd device\n");

	return (FUNC10(dev));

fail_retarn_dctmpl:
	FUNC12(sc->iot, sc->cpmem_ioh, IPU_CPMEM_SIZE);
fail_retarn_cpmem:
	FUNC12(sc->iot, sc->idmac_ioh, IPU_IDMAC_SIZE);
fail_retarn_idmac:
	FUNC12(sc->iot, sc->dc_ioh, IPU_DC_SIZE);
fail_retarn_dp:
	FUNC12(sc->iot, sc->dp_ioh, IPU_DP_SIZE);
fail_retarn_dc:
	FUNC12(sc->iot, sc->di1_ioh, IPU_DI1_SIZE);
fail_retarn_di1:
	FUNC12(sc->iot, sc->di0_ioh, IPU_DI0_SIZE);
fail_retarn_di0:
	FUNC12(sc->iot, sc->dmfc_ioh, IPU_DMFC_SIZE);
fail_retarn_dmfc:
	FUNC12(sc->iot, sc->dc_ioh, IPU_CM_SIZE);
fail_retarn_cm:
	FUNC17(sc->dev,
	    "failed to map registers (errno=%d)\n", err);
	return (err);
}