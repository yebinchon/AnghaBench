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
struct bcm_vchiq_softc {int regs_offset; int /*<<< orphan*/  lock; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  intr_hl; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ UPSTREAM_DTB ; 
 int /*<<< orphan*/  bcm_vchiq_intr ; 
 struct bcm_vchiq_softc* bcm_vchiq_sc ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bcm_vchiq_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compat_data ; 
 struct bcm_vchiq_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_cache_line_size ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct bcm_vchiq_softc *sc = FUNC6(dev);
	phandle_t node;
	pcell_t cell;
	int rid = 0;

	if (bcm_vchiq_sc != NULL)
		return (EINVAL);

	sc->mem_res = FUNC1(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC7(dev, "could not allocate memory resource\n");
		return (ENXIO);
	}

	sc->bst = FUNC12(sc->mem_res);
	sc->bsh = FUNC11(sc->mem_res);

	rid = 0;
	sc->irq_res = FUNC1(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC7(dev, "could not allocate interrupt resource\n");
		return (ENXIO);
	}

	if (FUNC10(dev, compat_data)->ocd_data == UPSTREAM_DTB)
		sc->regs_offset = -0x40;

	node = FUNC9(dev);
	if ((FUNC0(node, "cache-line-size", &cell, sizeof(cell))) > 0)
		g_cache_line_size = cell;

	FUNC13();

	/* Setup and enable the timer */
	if (FUNC5(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
			NULL, bcm_vchiq_intr, sc,
			&sc->intr_hl) != 0) {
		FUNC4(dev, SYS_RES_IRQ, rid,
			sc->irq_res);
		FUNC7(dev, "Unable to setup the clock irq handler.\n");
		return (ENXIO);
	}

	FUNC8(&sc->lock, "vchiq", 0, MTX_DEF);
	bcm_vchiq_sc = sc;

	FUNC14();

	FUNC3(dev);
	FUNC2(dev);

	return (0);
}