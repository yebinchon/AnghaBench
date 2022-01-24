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
struct tegra_drm {scalar_t__ pitch_align; int /*<<< orphan*/  drm_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  cursor_vbase; int /*<<< orphan*/  cursor_pbase; int /*<<< orphan*/  drm_crtc; } ;
struct dc_softc {scalar_t__ pitch_align; TYPE_1__ tegra_crtc; int /*<<< orphan*/  irq_ih; int /*<<< orphan*/  irq_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DC_CMD_INT_ENABLE ; 
 int /*<<< orphan*/  DC_CMD_INT_MASK ; 
 int /*<<< orphan*/  DC_CMD_INT_POLARITY ; 
 int /*<<< orphan*/  DC_CMD_INT_TYPE ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  VM_MEMATTR_WRITE_COMBINING ; 
 int WIN_A_OF_INT ; 
 int WIN_A_UF_INT ; 
 int WIN_B_OF_INT ; 
 int WIN_B_UF_INT ; 
 int WIN_C_OF_INT ; 
 int WIN_C_UF_INT ; 
 int /*<<< orphan*/  FUNC0 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dc_crtc_funcs ; 
 int /*<<< orphan*/  dc_crtc_helper_funcs ; 
 int FUNC2 (struct dc_softc*,struct tegra_drm*) ; 
 int /*<<< orphan*/  dc_intr ; 
 struct dc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev, device_t host1x, struct tegra_drm *drm)
{
	struct dc_softc *sc;
	int rv;

	sc = FUNC3(dev);

	if (drm->pitch_align < sc->pitch_align)
		drm->pitch_align = sc->pitch_align;

	FUNC6(&drm->drm_dev, &sc->tegra_crtc.drm_crtc, &dc_crtc_funcs);
	FUNC7(&sc->tegra_crtc.drm_crtc, 256);
	FUNC5(&sc->tegra_crtc.drm_crtc, &dc_crtc_helper_funcs);

	rv = FUNC2(sc, drm);
	if (rv!= 0){
		FUNC4(dev, "Cannot init planes\n");
		return (rv);
	}

	FUNC0(sc, DC_CMD_INT_TYPE,
	    WIN_A_UF_INT | WIN_B_UF_INT | WIN_C_UF_INT |
	    WIN_A_OF_INT | WIN_B_OF_INT | WIN_C_OF_INT);

	FUNC0(sc, DC_CMD_INT_POLARITY,
	    WIN_A_UF_INT | WIN_B_UF_INT | WIN_C_UF_INT |
	    WIN_A_OF_INT | WIN_B_OF_INT | WIN_C_OF_INT);

	FUNC0(sc, DC_CMD_INT_ENABLE, 0);
	FUNC0(sc, DC_CMD_INT_MASK, 0);

	rv = FUNC1(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, dc_intr, sc, &sc->irq_ih);
	if (rv != 0) {
		FUNC4(dev, "Cannot register interrupt handler\n");
		return (rv);
	}

	/* allocate memory for cursor cache */
	sc->tegra_crtc.cursor_vbase = FUNC8(256 * 256 * 4,
	    M_WAITOK | M_ZERO, 0, -1UL, PAGE_SIZE, 0,
	    VM_MEMATTR_WRITE_COMBINING);
	sc->tegra_crtc.cursor_pbase = FUNC9(sc->tegra_crtc.cursor_vbase);
	return (0);
}