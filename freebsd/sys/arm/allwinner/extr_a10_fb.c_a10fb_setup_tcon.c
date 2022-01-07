
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct videomode {int flags; int hdisplay; int vdisplay; int hsync_end; int hsync_start; int htotal; int vsync_end; int vsync_start; int vtotal; int dot_clock; } ;
struct a10fb_softc {int dev; } ;
typedef int hwreset_t ;
typedef int clk_t ;


 int BASIC3_HBP (int) ;
 int BASIC3_HT (int) ;
 int BASIC4_VBP (int) ;
 int BASIC4_VT (int) ;
 int BASIC5_HSPW (int) ;
 int BASIC5_VSPW (int) ;
 int BASIC_X (int) ;
 int BASIC_Y (int) ;
 int DCLK_EN ;
 int DIVIDE (int,int) ;
 int DOT_CLOCK_TO_HZ (int ) ;
 int GCTL_IO_MAP_SEL_TCON1 ;
 int GINT1_TCON1_LINENO (int) ;
 int INTERLACE_EN ;
 int IO_POL_IO2_INV ;
 int IO_POL_PHSYNC ;
 int IO_POL_PVSYNC ;
 int IO_TRI_MASK ;
 int START_DELAY (int) ;
 int TCON0_DCLK ;
 int TCON1_BASIC0 ;
 int TCON1_BASIC1 ;
 int TCON1_BASIC2 ;
 int TCON1_BASIC3 ;
 int TCON1_BASIC4 ;
 int TCON1_BASIC5 ;
 int TCON1_CTL ;
 int TCON1_EN ;
 int TCON1_IO_POL ;
 int TCON1_IO_TRI ;
 int TCON1_SRC_CH1 ;
 int TCON1_SRC_SEL (int ) ;
 int TCON1_START_DELAY (int) ;
 int TCON_GCTL ;
 int TCON_GINT1 ;
 int TCON_WRITE (struct a10fb_softc*,int ,int) ;
 int VBLANK_LEN (int,int,int) ;
 int VID_INTERLACE ;
 int VID_PHSYNC ;
 int VID_PVSYNC ;
 int VTOTAL (int) ;
 int a10fb_setup_pll (struct a10fb_softc*,int) ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int device_printf (int ,char*) ;
 int hwreset_deassert (int ) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int *) ;

__attribute__((used)) static int
a10fb_setup_tcon(struct a10fb_softc *sc, const struct videomode *mode)
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
 vbl = VBLANK_LEN(mode->vtotal, mode->vdisplay, interlace);
 start_delay = START_DELAY(vbl);


 error = hwreset_get_by_ofw_name(sc->dev, 0, "lcd", &rst);
 if (error != 0) {
  device_printf(sc->dev, "cannot find reset 'lcd'\n");
  return (error);
 }
 error = hwreset_deassert(rst);
 if (error != 0) {
  device_printf(sc->dev, "couldn't de-assert reset 'lcd'\n");
  return (error);
 }

 error = clk_get_by_ofw_name(sc->dev, 0, "ahb_lcd", &clk_ahb);
 if (error != 0) {
  device_printf(sc->dev, "cannot find clk 'ahb_lcd'\n");
  return (error);
 }
 error = clk_enable(clk_ahb);
 if (error != 0) {
  device_printf(sc->dev, "cannot enable clk 'ahb_lcd'\n");
  return (error);
 }


 TCON_WRITE(sc, TCON_GCTL, 0);
 TCON_WRITE(sc, TCON1_CTL, 0);


 TCON_WRITE(sc, TCON0_DCLK, DCLK_EN);


 TCON_WRITE(sc, TCON1_IO_TRI, IO_TRI_MASK);


 TCON_WRITE(sc, TCON_GCTL, GCTL_IO_MAP_SEL_TCON1);


 TCON_WRITE(sc, TCON1_BASIC0, BASIC_X(width) | BASIC_Y(height));

 TCON_WRITE(sc, TCON1_BASIC1, BASIC_X(width) | BASIC_Y(height));

 TCON_WRITE(sc, TCON1_BASIC2, BASIC_X(width) | BASIC_Y(height));

 TCON_WRITE(sc, TCON1_BASIC3, BASIC3_HT(mode->htotal) | BASIC3_HBP(hbp));

 vtotal = VTOTAL(mode->vtotal);
 if (interlace) {
  framerate = DIVIDE(DIVIDE(DOT_CLOCK_TO_HZ(mode->dot_clock),
      mode->htotal), mode->vtotal);
  clk = mode->htotal * (VTOTAL(mode->vtotal) + 1) * framerate;
  if ((clk / 2) == DOT_CLOCK_TO_HZ(mode->dot_clock))
   vtotal += 1;
 }
 TCON_WRITE(sc, TCON1_BASIC4, BASIC4_VT(vtotal) | BASIC4_VBP(vbp));

 TCON_WRITE(sc, TCON1_BASIC5, BASIC5_HSPW(hspw) | BASIC5_VSPW(vspw));

 val = IO_POL_IO2_INV;
 if (mode->flags & VID_PHSYNC)
  val |= IO_POL_PHSYNC;
 if (mode->flags & VID_PVSYNC)
  val |= IO_POL_PVSYNC;
 TCON_WRITE(sc, TCON1_IO_POL, val);


 TCON_WRITE(sc, TCON_GINT1, GINT1_TCON1_LINENO(start_delay));


 val = TCON1_EN;
 if (interlace)
  val |= INTERLACE_EN;
 val |= TCON1_START_DELAY(start_delay);
 val |= TCON1_SRC_SEL(TCON1_SRC_CH1);
 TCON_WRITE(sc, TCON1_CTL, val);


 return (a10fb_setup_pll(sc, DOT_CLOCK_TO_HZ(mode->dot_clock)));
}
