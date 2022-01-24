#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct pl310_softc {int sc_rtl_revision; int sc_io_coherent; int sc_enabled; TYPE_1__* sc_ich; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int /*<<< orphan*/  cf_l2cache_drain_writebuf; int /*<<< orphan*/  cf_l2cache_wb_range; int /*<<< orphan*/  cf_l2cache_inv_range; int /*<<< orphan*/  cf_l2cache_wbinv_range; int /*<<< orphan*/  (* cf_l2cache_wbinv_all ) () ;} ;
struct TYPE_5__ {struct pl310_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;

/* Variables and functions */
 int CACHE_ID_PARTNUM_MASK ; 
 int CACHE_ID_PARTNUM_SHIFT ; 
 int CACHE_ID_RELEASE_MASK ; 
 int CACHE_ID_RELEASE_SHIFT ; 
 int CTRL_DISABLED ; 
 int CTRL_ENABLED ; 
 int DEBUG_CTRL_DISABLE_LINEFILL ; 
 int DEBUG_CTRL_DISABLE_WRITEBACK ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PL310_CACHE_ID ; 
 int /*<<< orphan*/  PL310_CTRL ; 
 int /*<<< orphan*/  PL310_DEBUG_CTRL ; 
 int /*<<< orphan*/  PL310_INV_WAY ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_3__ cpufuncs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct pl310_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_l2cache_line_size ; 
 int g_l2cache_size ; 
 int /*<<< orphan*/  g_ways_assoc ; 
 TYPE_1__* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pl310_config_intr ; 
 int /*<<< orphan*/  pl310_drain_writebuf ; 
 int pl310_enabled ; 
 int /*<<< orphan*/  pl310_inv_range ; 
 int /*<<< orphan*/  FUNC11 (struct pl310_softc*) ; 
 int FUNC12 (struct pl310_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pl310_softc*) ; 
 struct pl310_softc* pl310_softc ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pl310_wb_range ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  pl310_wbinv_range ; 
 int /*<<< orphan*/  FUNC16 (struct pl310_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pl310_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct pl310_softc*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct pl310_softc*,int) ; 

__attribute__((used)) static int
FUNC20(device_t dev)
{
	struct pl310_softc *sc = FUNC4(dev);
	int rid;
	uint32_t cache_id, debug_ctrl;
	phandle_t node;

	sc->sc_dev = dev;
	rid = 0;
	sc->sc_mem_res = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_mem_res == NULL)
		FUNC10("%s: Cannot map registers", FUNC3(dev));

	/* Allocate an IRQ resource */
	rid = 0;
	sc->sc_irq_res = FUNC1(dev, SYS_RES_IRQ, &rid,
	                                        RF_ACTIVE | RF_SHAREABLE);
	if (sc->sc_irq_res == NULL) {
		FUNC5(dev, "cannot allocate IRQ, not using interrupt\n");
	}

	pl310_softc = sc;
	FUNC8(&sc->sc_mtx, "pl310lock", NULL, MTX_SPIN);

	cache_id = FUNC12(sc, PL310_CACHE_ID);
	sc->sc_rtl_revision = (cache_id >> CACHE_ID_RELEASE_SHIFT) &
	    CACHE_ID_RELEASE_MASK;
	FUNC5(dev, "Part number: 0x%x, release: 0x%x\n",
	    (cache_id >> CACHE_ID_PARTNUM_SHIFT) & CACHE_ID_PARTNUM_MASK,
	    (cache_id >> CACHE_ID_RELEASE_SHIFT) & CACHE_ID_RELEASE_MASK);

	/*
	 * Test for "arm,io-coherent" property and disable sync operation if
	 * platform is I/O coherent. Outer sync operations are not needed
	 * on coherent platform and may be harmful in certain situations.
	 */
	node = FUNC9(dev);
	if (FUNC0(node, "arm,io-coherent"))
		sc->sc_io_coherent = true;

	/*
	 * If L2 cache is already enabled then something has violated the rules,
	 * because caches are supposed to be off at kernel entry.  The cache
	 * must be disabled to write the configuration registers without
	 * triggering an access error (SLVERR), but there's no documented safe
	 * procedure for disabling the L2 cache in the manual.  So we'll try to
	 * invent one:
	 *  - Use the debug register to force write-through mode and prevent
	 *    linefills (allocation of new lines on read); now anything we do
	 *    will not cause new data to come into the L2 cache.
	 *  - Writeback and invalidate the current contents.
	 *  - Disable the controller.
	 *  - Restore the original debug settings.
	 */
	if (FUNC12(sc, PL310_CTRL) & CTRL_ENABLED) {
		FUNC5(dev, "Warning: L2 Cache should not already be "
		    "active; trying to de-activate and re-initialize...\n");
		sc->sc_enabled = 1;
		debug_ctrl = FUNC12(sc, PL310_DEBUG_CTRL);
		FUNC19(sc, debug_ctrl |
		    DEBUG_CTRL_DISABLE_WRITEBACK | DEBUG_CTRL_DISABLE_LINEFILL);
		FUNC13(sc);
		FUNC15();
		FUNC18(sc, CTRL_DISABLED);
		FUNC19(sc, debug_ctrl);
	}
	sc->sc_enabled = pl310_enabled;

	if (sc->sc_enabled) {
		FUNC17(sc);
		FUNC13(sc); /* platform init might change these */
		FUNC16(pl310_softc, PL310_INV_WAY, 0xffff);
		FUNC14(PL310_INV_WAY, 0xffff);
		FUNC18(sc, CTRL_ENABLED);
		FUNC5(dev, "L2 Cache enabled: %uKB/%dB %d ways\n",
		    (g_l2cache_size / 1024), g_l2cache_line_size, g_ways_assoc);
		if (bootverbose)
			FUNC11(sc);
	} else {
		if (sc->sc_irq_res != NULL) {
			sc->sc_ich = FUNC7(sizeof(*sc->sc_ich), M_DEVBUF, M_WAITOK);
			sc->sc_ich->ich_func = pl310_config_intr;
			sc->sc_ich->ich_arg = sc;
			if (FUNC2(sc->sc_ich) != 0) {
				FUNC5(dev,
				    "config_intrhook_establish failed\n");
				FUNC6(sc->sc_ich, M_DEVBUF);
				return(ENXIO);
			}
		}

		FUNC5(dev, "L2 Cache disabled\n");
	}

	/* Set the l2 functions in the set of cpufuncs */
	cpufuncs.cf_l2cache_wbinv_all = pl310_wbinv_all;
	cpufuncs.cf_l2cache_wbinv_range = pl310_wbinv_range;
	cpufuncs.cf_l2cache_inv_range = pl310_inv_range;
	cpufuncs.cf_l2cache_wb_range = pl310_wb_range;
	cpufuncs.cf_l2cache_drain_writebuf = pl310_drain_writebuf;

	return (0);
}