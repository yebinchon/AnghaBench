#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sc_rtl_revision; int /*<<< orphan*/  sc_enabled; } ;

/* Variables and functions */
 scalar_t__ CACHE_ID_RELEASE_r2p0 ; 
 scalar_t__ CACHE_ID_RELEASE_r3p0 ; 
 int /*<<< orphan*/  PL310_CLEAN_INV_LINE_IDX ; 
 int /*<<< orphan*/  PL310_CLEAN_INV_WAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int g_l2cache_line_size ; 
 int g_l2cache_way_mask ; 
 int g_way_size ; 
 int g_ways_assoc ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* pl310_softc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC6(void)
{

	if ((pl310_softc == NULL) || !pl310_softc->sc_enabled)
		return;

	FUNC0(pl310_softc);
#ifdef PL310_ERRATA_727915
	if (pl310_softc->sc_rtl_revision == CACHE_ID_RELEASE_r2p0) {
		int i, j;

		for (i = 0; i < g_ways_assoc; i++) {
			for (j = 0; j < g_way_size / g_l2cache_line_size; j++) {
				pl310_write4(pl310_softc,
				    PL310_CLEAN_INV_LINE_IDX,
				    (i << 28 | j << 5));
			}
		}
		pl310_cache_sync();
		PL310_UNLOCK(pl310_softc);
		return;

	}
	if (pl310_softc->sc_rtl_revision == CACHE_ID_RELEASE_r3p0)
		platform_pl310_write_debug(pl310_softc, 3);
#endif
	FUNC4(pl310_softc, PL310_CLEAN_INV_WAY, g_l2cache_way_mask);
	FUNC3(PL310_CLEAN_INV_WAY, g_l2cache_way_mask);
	FUNC2();
#ifdef PL310_ERRATA_727915
	if (pl310_softc->sc_rtl_revision == CACHE_ID_RELEASE_r3p0)
		platform_pl310_write_debug(pl310_softc, 0);
#endif
	FUNC1(pl310_softc);
}