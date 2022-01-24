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
struct videomode {int flags; int hdisplay; int vdisplay; } ;
struct a10fb_softc {int /*<<< orphan*/  paddr; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  hwreset_t ;
typedef  int /*<<< orphan*/  clk_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLK_SET_ROUND_DOWN ; 
 int DEBE_ATTCTL1 ; 
 int DEBE_DISSIZE ; 
 int /*<<< orphan*/  DEBE_FREQ ; 
 int DEBE_LAYCOOR0 ; 
 int DEBE_LAYFB_H4ADD ; 
 int DEBE_LAYFB_L32ADD0 ; 
 int DEBE_LAYLINEWIDTH0 ; 
 int DEBE_LAYSIZE0 ; 
 int DEBE_MODCTL ; 
 int FUNC2 (struct a10fb_softc*,int) ; 
 int DEBE_REGBUFFCTL ; 
 int DEBE_REG_END ; 
 int DEBE_REG_START ; 
 scalar_t__ DEBE_REG_WIDTH ; 
 int /*<<< orphan*/  FUNC3 (struct a10fb_softc*,int,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FBFMT_XRGB8888 ; 
 int /*<<< orphan*/  FBPS_32BPP_ARGB ; 
 int FB_BPP ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int MODCTL_EN ; 
 int MODCTL_ITLMOD_EN ; 
 int MODCTL_LAY0_EN ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int MODCTL_OUT_SEL_MASK ; 
 int MODCTL_START_CTL ; 
 int /*<<< orphan*/  OUT_SEL_LCD ; 
 int REGBUFFCTL_LOAD ; 
 int VID_INTERLACE ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(struct a10fb_softc *sc, const struct videomode *mode)
{
	int width, height, interlace, reg;
	clk_t clk_ahb, clk_dram, clk_debe;
	hwreset_t rst;
	uint32_t val;
	int error;

	interlace = !!(mode->flags & VID_INTERLACE);
	width = mode->hdisplay;
	height = mode->vdisplay << interlace;

	/* Leave reset */
	error = FUNC18(sc->dev, 0, "de_be", &rst);
	if (error != 0) {
		FUNC16(sc->dev, "cannot find reset 'de_be'\n");
		return (error);
	}
	error = FUNC17(rst);
	if (error != 0) {
		FUNC16(sc->dev, "couldn't de-assert reset 'de_be'\n");
		return (error);
	}
	/* Gating AHB clock for BE */
	error = FUNC14(sc->dev, 0, "ahb_de_be", &clk_ahb);
	if (error != 0) {
		FUNC16(sc->dev, "cannot find clk 'ahb_de_be'\n");
		return (error);
	}
	error = FUNC13(clk_ahb);
	if (error != 0) {
		FUNC16(sc->dev, "cannot enable clk 'ahb_de_be'\n");
		return (error);
	}
	/* Enable DRAM clock to BE */
	error = FUNC14(sc->dev, 0, "dram_de_be", &clk_dram);
	if (error != 0) {
		FUNC16(sc->dev, "cannot find clk 'dram_de_be'\n");
		return (error);
	}
	error = FUNC13(clk_dram);
	if (error != 0) {
		FUNC16(sc->dev, "cannot enable clk 'dram_de_be'\n");
		return (error);
	}
	/* Set BE clock to 300MHz and enable */
	error = FUNC14(sc->dev, 0, "de_be", &clk_debe);
	if (error != 0) {
		FUNC16(sc->dev, "cannot find clk 'de_be'\n");
		return (error);
	}
	error = FUNC15(clk_debe, DEBE_FREQ, CLK_SET_ROUND_DOWN);
	if (error != 0) {
		FUNC16(sc->dev, "cannot set 'de_be' frequency\n");
		return (error);
	}
	error = FUNC13(clk_debe);
	if (error != 0) {
		FUNC16(sc->dev, "cannot enable clk 'de_be'\n");
		return (error);
	}

	/* Initialize all registers to 0 */
	for (reg = DEBE_REG_START; reg < DEBE_REG_END; reg += DEBE_REG_WIDTH)
		FUNC3(sc, reg, 0);

	/* Enable display backend */
	FUNC3(sc, DEBE_MODCTL, MODCTL_EN);

	/* Set display size */
	FUNC3(sc, DEBE_DISSIZE, FUNC4(height) | FUNC5(width));

	/* Set layer 0 size, position, and stride */
	FUNC3(sc, DEBE_LAYSIZE0, FUNC8(height) | FUNC9(width));
	FUNC3(sc, DEBE_LAYCOOR0, FUNC10(0) | FUNC11(0));
	FUNC3(sc, DEBE_LAYLINEWIDTH0, width * FB_BPP);

	/* Point layer 0 to FB memory */
	FUNC3(sc, DEBE_LAYFB_L32ADD0, FUNC7(sc->paddr));
	FUNC3(sc, DEBE_LAYFB_H4ADD, FUNC6(sc->paddr));

	/* Set backend format and pixel sequence */
	FUNC3(sc, DEBE_ATTCTL1, FUNC0(FBFMT_XRGB8888) |
	    FUNC1(FBPS_32BPP_ARGB));

	/* Enable layer 0, output to LCD, setup interlace */
	val = FUNC2(sc, DEBE_MODCTL);
	val |= MODCTL_LAY0_EN;
	val &= ~MODCTL_OUT_SEL_MASK;
	val |= FUNC12(OUT_SEL_LCD);
	if (interlace)
		val |= MODCTL_ITLMOD_EN;
	else
		val &= ~MODCTL_ITLMOD_EN;
	FUNC3(sc, DEBE_MODCTL, val);

	/* Commit settings */
	FUNC3(sc, DEBE_REGBUFFCTL, REGBUFFCTL_LOAD);

	/* Start DEBE */
	val = FUNC2(sc, DEBE_MODCTL);
	val |= MODCTL_START_CTL;
	FUNC3(sc, DEBE_MODCTL, val);

	return (0);
}