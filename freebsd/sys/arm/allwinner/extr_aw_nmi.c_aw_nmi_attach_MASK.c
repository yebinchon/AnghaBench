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
struct TYPE_3__ {scalar_t__ irq; int /*<<< orphan*/  isrc; int /*<<< orphan*/  tri; int /*<<< orphan*/  pol; } ;
struct aw_nmi_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  intrcookie; TYPE_1__ intr; int /*<<< orphan*/  dev; struct aw_nmi_reg_cfg* cfg; } ;
struct aw_nmi_reg_cfg {int /*<<< orphan*/  pending_reg; int /*<<< orphan*/  enable_reg; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_POLARITY_CONFORM ; 
 int /*<<< orphan*/  INTR_TRIGGER_CONFORM ; 
 int /*<<< orphan*/  INTR_TYPE_MISC ; 
 int NMI_IRQ_ACK ; 
 int /*<<< orphan*/  NMI_IRQ_ENABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aw_nmi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  aw_nmi_intr ; 
 int /*<<< orphan*/  aw_nmi_res_spec ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct aw_nmi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct aw_nmi_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct aw_nmi_softc *sc;
	phandle_t xref;

	sc = FUNC7(dev);
	sc->dev = dev;
	sc->cfg = (struct aw_nmi_reg_cfg *)
	    FUNC12(dev, compat_data)->ocd_data;

	if (FUNC2(dev, aw_nmi_res_spec, sc->res) != 0) {
		FUNC8(dev, "can't allocate device resources\n");
		return (ENXIO);
	}
	if ((FUNC4(dev, sc->res[1], INTR_TYPE_MISC,
	    aw_nmi_intr, NULL, sc, &sc->intrcookie))) {
		FUNC8(dev, "unable to register interrupt handler\n");
		FUNC3(dev, aw_nmi_res_spec, sc->res);
		return (ENXIO);
	}

	/* Disable and clear interrupts */
	FUNC1(sc, sc->cfg->enable_reg, !NMI_IRQ_ENABLE);
	FUNC1(sc, sc->cfg->pending_reg, NMI_IRQ_ACK);

	xref = FUNC0(FUNC11(dev));
	/* Register our isrc */
	sc->intr.irq = 0;
	sc->intr.pol = INTR_POLARITY_CONFORM;
	sc->intr.tri = INTR_TRIGGER_CONFORM;
	if (FUNC9(&sc->intr.isrc, sc->dev, 0, "%s,%u",
	      FUNC6(sc->dev), sc->intr.irq) != 0)
		goto error;

	if (FUNC10(dev, (intptr_t)xref) == NULL) {
		FUNC8(dev, "could not register pic\n");
		goto error;
	}
	return (0);

error:
	FUNC5(dev, sc->res[1], sc->intrcookie);
	FUNC3(dev, aw_nmi_res_spec, sc->res);
	return (ENXIO);
}