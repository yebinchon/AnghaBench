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
typedef  int u_int ;
struct videomode {int flags; int hdisplay; int vdisplay; int hsync_end; int hsync_start; int htotal; int vsync_end; int vsync_start; int vtotal; int /*<<< orphan*/  dot_clock; } ;
struct a10fb_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  hwreset_t ;
typedef  int /*<<< orphan*/  clk_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int DCLK_EN ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int GCTL_IO_MAP_SEL_TCON1 ; 
 int FUNC10 (int) ; 
 int INTERLACE_EN ; 
 int IO_POL_IO2_INV ; 
 int IO_POL_PHSYNC ; 
 int IO_POL_PVSYNC ; 
 int IO_TRI_MASK ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  TCON0_DCLK ; 
 int /*<<< orphan*/  TCON1_BASIC0 ; 
 int /*<<< orphan*/  TCON1_BASIC1 ; 
 int /*<<< orphan*/  TCON1_BASIC2 ; 
 int /*<<< orphan*/  TCON1_BASIC3 ; 
 int /*<<< orphan*/  TCON1_BASIC4 ; 
 int /*<<< orphan*/  TCON1_BASIC5 ; 
 int /*<<< orphan*/  TCON1_CTL ; 
 int TCON1_EN ; 
 int /*<<< orphan*/  TCON1_IO_POL ; 
 int /*<<< orphan*/  TCON1_IO_TRI ; 
 int /*<<< orphan*/  TCON1_SRC_CH1 ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  TCON_GCTL ; 
 int /*<<< orphan*/  TCON_GINT1 ; 
 int /*<<< orphan*/  FUNC14 (struct a10fb_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int,int,int) ; 
 int VID_INTERLACE ; 
 int VID_PHSYNC ; 
 int VID_PVSYNC ; 
 int FUNC16 (int) ; 
 int FUNC17 (struct a10fb_softc*,int) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC23(struct a10fb_softc *sc, const struct videomode *mode)
{
	u_int interlace, hspw, hbp, vspw, vbp, vbl, width, height, start_delay;
	u_int vtotal, framerate, clk;
	clk_t clk_ahb;
	hwreset_t rst;
	uint32_t val;
	int error;

	interlace = !!(mode->flags & VID_INTERLACE);
	width = mode->hdisplay;
	height = mode->vdisplay;
	hspw = mode->hsync_end - mode->hsync_start;
	hbp = mode->htotal - mode->hsync_start;
	vspw = mode->vsync_end - mode->vsync_start;
	vbp = mode->vtotal - mode->vsync_start;
	vbl = FUNC15(mode->vtotal, mode->vdisplay, interlace);
	start_delay = FUNC11(vbl);

	/* Leave reset */
	error = FUNC22(sc->dev, 0, "lcd", &rst);
	if (error != 0) {
		FUNC20(sc->dev, "cannot find reset 'lcd'\n");
		return (error);
	}
	error = FUNC21(rst);
	if (error != 0) {
		FUNC20(sc->dev, "couldn't de-assert reset 'lcd'\n");
		return (error);
	}
	/* Gating AHB clock for LCD */
	error = FUNC19(sc->dev, 0, "ahb_lcd", &clk_ahb);
	if (error != 0) {
		FUNC20(sc->dev, "cannot find clk 'ahb_lcd'\n");
		return (error);
	}
	error = FUNC18(clk_ahb);
	if (error != 0) {
		FUNC20(sc->dev, "cannot enable clk 'ahb_lcd'\n");
		return (error);
	}

	/* Disable TCON and TCON1 */
	FUNC14(sc, TCON_GCTL, 0);
	FUNC14(sc, TCON1_CTL, 0);

	/* Enable clocks */
	FUNC14(sc, TCON0_DCLK, DCLK_EN);

	/* Disable IO and data output ports */
	FUNC14(sc, TCON1_IO_TRI, IO_TRI_MASK);

	/* Disable TCON and select TCON1 */
	FUNC14(sc, TCON_GCTL, GCTL_IO_MAP_SEL_TCON1);

	/* Source width and height */
	FUNC14(sc, TCON1_BASIC0, FUNC6(width) | FUNC7(height));
	/* Scaler width and height */
	FUNC14(sc, TCON1_BASIC1, FUNC6(width) | FUNC7(height));
	/* Output width and height */
	FUNC14(sc, TCON1_BASIC2, FUNC6(width) | FUNC7(height));
	/* Horizontal total and back porch */
	FUNC14(sc, TCON1_BASIC3, FUNC1(mode->htotal) | FUNC0(hbp));
	/* Vertical total and back porch */
	vtotal = FUNC16(mode->vtotal);
	if (interlace) {
		framerate = FUNC8(FUNC8(FUNC9(mode->dot_clock),
		    mode->htotal), mode->vtotal);
		clk = mode->htotal * (FUNC16(mode->vtotal) + 1) * framerate;
		if ((clk / 2) == FUNC9(mode->dot_clock))
			vtotal += 1;
	}
	FUNC14(sc, TCON1_BASIC4, FUNC3(vtotal) | FUNC2(vbp));
	/* Horizontal and vertical sync */
	FUNC14(sc, TCON1_BASIC5, FUNC4(hspw) | FUNC5(vspw));
	/* Polarity */
	val = IO_POL_IO2_INV;
	if (mode->flags & VID_PHSYNC)
		val |= IO_POL_PHSYNC;
	if (mode->flags & VID_PVSYNC)
		val |= IO_POL_PVSYNC;
	FUNC14(sc, TCON1_IO_POL, val);

	/* Set scan line for TCON1 line trigger */
	FUNC14(sc, TCON_GINT1, FUNC10(start_delay));

	/* Enable TCON1 */
	val = TCON1_EN;
	if (interlace)
		val |= INTERLACE_EN;
	val |= FUNC13(start_delay);
	val |= FUNC12(TCON1_SRC_CH1);
	FUNC14(sc, TCON1_CTL, val);

	/* Setup PLL */
	return (FUNC17(sc, FUNC9(mode->dot_clock)));
}