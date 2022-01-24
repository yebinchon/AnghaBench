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
struct ipu_softc {int /*<<< orphan*/  sc_hdmi_evh; void* sc_mem_res; scalar_t__ sc_mem_rid; void* sc_irq_res; scalar_t__ sc_irq_rid; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ipu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_softc*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 struct ipu_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int have_ipu ; 
 int /*<<< orphan*/  hdmi_event ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  ipu_hdmi_event ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct ipu_softc *sc;

	if (have_ipu)
		return (ENXIO);

	sc = FUNC4(dev);
	sc->sc_dev = dev;

	sc->sc_mem_rid = 0;
	sc->sc_mem_res = FUNC2(dev, SYS_RES_MEMORY,
	    &sc->sc_mem_rid, RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC5(dev, "cannot allocate memory window\n");
		return (ENXIO);
	}

	sc->sc_irq_rid = 0;
	sc->sc_irq_res = FUNC2(dev, SYS_RES_IRQ,
	    &sc->sc_irq_rid, RF_ACTIVE);
	if (!sc->sc_irq_res) {
		FUNC3(dev, SYS_RES_MEMORY,
		    sc->sc_mem_rid, sc->sc_mem_res);
		FUNC5(dev, "cannot allocate interrupt\n");
		return (ENXIO);
	}

	/* Enable IPU1 */
	FUNC6(1);

	if (FUNC7() != 0) {
		FUNC5(dev, "failed to reset IPU\n");
		return (ENXIO);
	}

	FUNC1(sc);

	sc->sc_hdmi_evh = FUNC0(hdmi_event,
	    ipu_hdmi_event, sc, 0);

	have_ipu = 1;

	return (0);
}