
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint32_t ;
struct TYPE_4__ {int panel_pxl_clk; int panel_width; int panel_height; int bpp; int panel_hbp; int panel_hfp; int panel_hsw; int panel_vbp; int panel_vfp; int panel_vsw; scalar_t__ hsync_active; scalar_t__ vsync_active; scalar_t__ pixelclk_active; int ac_bias; int ac_bias_intrpt; int dma_burst_sz; int fdd; scalar_t__ sync_edge; scalar_t__ sync_ctrl; } ;
struct TYPE_3__ {intptr_t fb_vbase; int fb_pbase; int fb_size; int fb_bpp; int fb_depth; int fb_stride; int fb_width; int fb_height; int fb_name; } ;
struct am335x_lcd_softc {int sc_fb_phys; int sc_fb_size; int sc_dev; scalar_t__ sc_fb_base; TYPE_2__ sc_panel; TYPE_1__ sc_fb_info; int sc_dma_map; int sc_dma_tag; } ;
typedef int * device_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CLKC_ENABLE_CORE ;
 int CLKC_ENABLE_DMA ;
 int CLKC_ENABLE_LDID ;
 int CLKC_RESET_MAIN ;
 int CTRL_DIV_SHIFT ;
 int CTRL_RASTER_MODE ;
 int DELAY (int) ;
 int ENXIO ;
 int IRQ_ACB ;
 int IRQ_EOF0 ;
 int IRQ_EOF1 ;
 int IRQ_FRAME_DONE ;
 int IRQ_FUF ;
 int IRQ_PL ;
 int IRQ_RASTER_DONE ;
 int IRQ_SYNC_LOST ;
 int LCDC_CLK ;
 int LCDDMA_CTRL_BURST_SIZE_SHIFT ;
 int LCDDMA_CTRL_FB0_FB1 ;
 int LCDDMA_CTRL_TH_FIFO_RDY_SHIFT ;
 int LCD_CLKC_ENABLE ;
 int LCD_CLKC_RESET ;
 int LCD_CTRL ;
 int LCD_IRQENABLE_SET ;
 int LCD_LCDDMA_CTRL ;
 int LCD_LCDDMA_FB0_BASE ;
 int LCD_LCDDMA_FB0_CEILING ;
 int LCD_LCDDMA_FB1_BASE ;
 int LCD_LCDDMA_FB1_CEILING ;
 int LCD_RASTER_CTRL ;
 int LCD_RASTER_TIMING_0 ;
 int LCD_RASTER_TIMING_1 ;
 int LCD_RASTER_TIMING_2 ;
 int LCD_READ4 (struct am335x_lcd_softc*,int ) ;
 int LCD_SYSCONFIG ;
 int LCD_WRITE4 (struct am335x_lcd_softc*,int ,int) ;
 int PALETTE_DATA_ONLY ;
 int RASTER_CTRL_LCDEN ;
 int RASTER_CTRL_LCDTFT ;
 int RASTER_CTRL_PALMODE_SHIFT ;
 int RASTER_CTRL_REQDLY_SHIFT ;
 int RASTER_CTRL_TFT24 ;
 int RASTER_CTRL_TFT24_UNPACKED ;
 int RASTER_TIMING_0_HBP_SHIFT ;
 int RASTER_TIMING_0_HFP_SHIFT ;
 int RASTER_TIMING_0_HSW_SHIFT ;
 int RASTER_TIMING_0_PPLLSB_SHIFT ;
 int RASTER_TIMING_0_PPLMSB_SHIFT ;
 int RASTER_TIMING_1_LPP_SHIFT ;
 int RASTER_TIMING_1_VBP_SHIFT ;
 int RASTER_TIMING_1_VFP_SHIFT ;
 int RASTER_TIMING_1_VSW_SHIFT ;
 int RASTER_TIMING_2_ACBI_SHIFT ;
 int RASTER_TIMING_2_ACB_SHIFT ;
 int RASTER_TIMING_2_HBPHI_SHIFT ;
 int RASTER_TIMING_2_HFPHI_SHIFT ;
 int RASTER_TIMING_2_HSWHI_SHIFT ;
 int RASTER_TIMING_2_IHS ;
 int RASTER_TIMING_2_IPC ;
 int RASTER_TIMING_2_IVS ;
 int RASTER_TIMING_2_LPP_B10_SHIFT ;
 int RASTER_TIMING_2_PHSVS ;
 int RASTER_TIMING_2_PHSVS_FALL ;
 int RASTER_TIMING_2_PHSVS_RISE ;
 int SC_AUTODETECT_KBD ;
 int SYSCONFIG_IDLE_SMART ;
 int SYSCONFIG_STANDBY_SMART ;
 int am335x_fb_dmamap_cb ;
 int am335x_lcd_calc_divisor (unsigned int,int) ;
 int am335x_lcd_syscons_setup (int ,int,int *) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,size_t,int,size_t,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,scalar_t__,size_t,int ,int*,int ) ;
 int bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int * device_add_child (int ,char*,int ) ;
 int device_get_flags (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ device_probe_and_attach (int *) ;
 int memset (scalar_t__,int,size_t) ;
 int panel ;
 size_t round_page (int) ;
 int sc_attach_unit (int ,int) ;
 scalar_t__ ti_prcm_clk_get_source_freq (int ,unsigned int*) ;
 scalar_t__ ti_prcm_clk_set_source_freq (int ,int) ;

__attribute__((used)) static int
am335x_lcd_configure(struct am335x_lcd_softc *sc)
{
 int div;
 uint32_t reg, timing0, timing1, timing2;
 uint32_t burst_log;
 size_t dma_size;
 uint32_t hbp, hfp, hsw;
 uint32_t vbp, vfp, vsw;
 uint32_t width, height;
 unsigned int ref_freq;
 int err;





 if (ti_prcm_clk_set_source_freq(LCDC_CLK, sc->sc_panel.panel_pxl_clk*2)) {
  device_printf(sc->sc_dev, "can't set source frequency\n");
  return (ENXIO);
 }

 if (ti_prcm_clk_get_source_freq(LCDC_CLK, &ref_freq)) {
  device_printf(sc->sc_dev, "can't get reference frequency\n");
  return (ENXIO);
 }


 dma_size = round_page(sc->sc_panel.panel_width*sc->sc_panel.panel_height*sc->sc_panel.bpp/8);




 err = bus_dma_tag_create(
     bus_get_dma_tag(sc->sc_dev),
     4, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     dma_size, 1,
     dma_size, 0,
     ((void*)0), ((void*)0),
     &sc->sc_dma_tag);
 if (err)
  goto done;

 err = bus_dmamem_alloc(sc->sc_dma_tag, (void **)&sc->sc_fb_base,
     BUS_DMA_COHERENT, &sc->sc_dma_map);

 if (err) {
  device_printf(sc->sc_dev, "cannot allocate framebuffer\n");
  goto done;
 }

 err = bus_dmamap_load(sc->sc_dma_tag, sc->sc_dma_map, sc->sc_fb_base,
     dma_size, am335x_fb_dmamap_cb, &sc->sc_fb_phys, BUS_DMA_NOWAIT);

 if (err) {
  device_printf(sc->sc_dev, "cannot load DMA map\n");
  goto done;
 }


 memset(sc->sc_fb_base, 0x0, dma_size);


 sc->sc_fb_size = sc->sc_panel.panel_width*sc->sc_panel.panel_height*sc->sc_panel.bpp/8;


 reg = CTRL_RASTER_MODE;
 div = am335x_lcd_calc_divisor(ref_freq, sc->sc_panel.panel_pxl_clk);
 reg |= (div << CTRL_DIV_SHIFT);
 LCD_WRITE4(sc, LCD_CTRL, reg);


 timing0 = timing1 = timing2 = 0;

 hbp = sc->sc_panel.panel_hbp - 1;
 hfp = sc->sc_panel.panel_hfp - 1;
 hsw = sc->sc_panel.panel_hsw - 1;

 vbp = sc->sc_panel.panel_vbp;
 vfp = sc->sc_panel.panel_vfp;
 vsw = sc->sc_panel.panel_vsw - 1;

 height = sc->sc_panel.panel_height - 1;
 width = sc->sc_panel.panel_width - 1;


 timing0 |= (hbp & 0xff) << RASTER_TIMING_0_HBP_SHIFT;
 timing2 |= ((hbp >> 8) & 3) << RASTER_TIMING_2_HBPHI_SHIFT;

 timing0 |= (hfp & 0xff) << RASTER_TIMING_0_HFP_SHIFT;
 timing2 |= ((hfp >> 8) & 3) << RASTER_TIMING_2_HFPHI_SHIFT;

 timing0 |= (hsw & 0x3f) << RASTER_TIMING_0_HSW_SHIFT;
 timing2 |= ((hsw >> 6) & 0xf) << RASTER_TIMING_2_HSWHI_SHIFT;


 timing1 |= (vbp & 0xff) << RASTER_TIMING_1_VBP_SHIFT;
 timing1 |= (vfp & 0xff) << RASTER_TIMING_1_VFP_SHIFT;
 timing1 |= (vsw & 0x3f) << RASTER_TIMING_1_VSW_SHIFT;


 timing0 |= ((width >> 10) & 1)
     << RASTER_TIMING_0_PPLMSB_SHIFT;
 timing0 |= ((width >> 4) & 0x3f)
     << RASTER_TIMING_0_PPLLSB_SHIFT;


 timing1 |= (height & 0x3ff)
     << RASTER_TIMING_1_LPP_SHIFT;
 timing2 |= ((height >> 10 ) & 1)
     << RASTER_TIMING_2_LPP_B10_SHIFT;


 if (sc->sc_panel.sync_ctrl)
  timing2 |= RASTER_TIMING_2_PHSVS;
 if (sc->sc_panel.sync_edge)
  timing2 |= RASTER_TIMING_2_PHSVS_RISE;
 else
  timing2 |= RASTER_TIMING_2_PHSVS_FALL;
 if (sc->sc_panel.hsync_active == 0)
  timing2 |= RASTER_TIMING_2_IHS;
 if (sc->sc_panel.vsync_active == 0)
  timing2 |= RASTER_TIMING_2_IVS;
 if (sc->sc_panel.pixelclk_active == 0)
  timing2 |= RASTER_TIMING_2_IPC;


 timing2 |= (sc->sc_panel.ac_bias << RASTER_TIMING_2_ACB_SHIFT);
 timing2 |= (sc->sc_panel.ac_bias_intrpt << RASTER_TIMING_2_ACBI_SHIFT);

 LCD_WRITE4(sc, LCD_RASTER_TIMING_0, timing0);
 LCD_WRITE4(sc, LCD_RASTER_TIMING_1, timing1);
 LCD_WRITE4(sc, LCD_RASTER_TIMING_2, timing2);


 reg = LCDDMA_CTRL_FB0_FB1;

 switch (sc->sc_panel.dma_burst_sz) {
 case 1:
  burst_log = 0;
  break;
 case 2:
  burst_log = 1;
  break;
 case 4:
  burst_log = 2;
  break;
 case 8:
  burst_log = 3;
  break;
 case 16:
 default:
  burst_log = 4;
  break;
 }
 reg |= (burst_log << LCDDMA_CTRL_BURST_SIZE_SHIFT);

 reg |= (0 << LCDDMA_CTRL_TH_FIFO_RDY_SHIFT);
 LCD_WRITE4(sc, LCD_LCDDMA_CTRL, reg);

 LCD_WRITE4(sc, LCD_LCDDMA_FB0_BASE, sc->sc_fb_phys);
 LCD_WRITE4(sc, LCD_LCDDMA_FB0_CEILING, sc->sc_fb_phys + sc->sc_fb_size - 1);
 LCD_WRITE4(sc, LCD_LCDDMA_FB1_BASE, sc->sc_fb_phys);
 LCD_WRITE4(sc, LCD_LCDDMA_FB1_CEILING, sc->sc_fb_phys + sc->sc_fb_size - 1);


 reg = RASTER_CTRL_LCDTFT;
 reg |= (sc->sc_panel.fdd << RASTER_CTRL_REQDLY_SHIFT);
 reg |= (PALETTE_DATA_ONLY << RASTER_CTRL_PALMODE_SHIFT);
 if (sc->sc_panel.bpp >= 24)
  reg |= RASTER_CTRL_TFT24;
 if (sc->sc_panel.bpp == 32)
  reg |= RASTER_CTRL_TFT24_UNPACKED;
 LCD_WRITE4(sc, LCD_RASTER_CTRL, reg);

 LCD_WRITE4(sc, LCD_CLKC_ENABLE,
     CLKC_ENABLE_DMA | CLKC_ENABLE_LDID | CLKC_ENABLE_CORE);

 LCD_WRITE4(sc, LCD_CLKC_RESET, CLKC_RESET_MAIN);
 DELAY(100);
 LCD_WRITE4(sc, LCD_CLKC_RESET, 0);

 reg = IRQ_EOF1 | IRQ_EOF0 | IRQ_FUF | IRQ_PL |
     IRQ_ACB | IRQ_SYNC_LOST | IRQ_RASTER_DONE |
     IRQ_FRAME_DONE;
 LCD_WRITE4(sc, LCD_IRQENABLE_SET, reg);

 reg = LCD_READ4(sc, LCD_RASTER_CTRL);
  reg |= RASTER_CTRL_LCDEN;
 LCD_WRITE4(sc, LCD_RASTER_CTRL, reg);

 LCD_WRITE4(sc, LCD_SYSCONFIG,
     SYSCONFIG_STANDBY_SMART | SYSCONFIG_IDLE_SMART);

 sc->sc_fb_info.fb_name = device_get_nameunit(sc->sc_dev);
 sc->sc_fb_info.fb_vbase = (intptr_t)sc->sc_fb_base;
 sc->sc_fb_info.fb_pbase = sc->sc_fb_phys;
 sc->sc_fb_info.fb_size = sc->sc_fb_size;
 sc->sc_fb_info.fb_bpp = sc->sc_fb_info.fb_depth = sc->sc_panel.bpp;
 sc->sc_fb_info.fb_stride = sc->sc_panel.panel_width*sc->sc_panel.bpp / 8;
 sc->sc_fb_info.fb_width = sc->sc_panel.panel_width;
 sc->sc_fb_info.fb_height = sc->sc_panel.panel_height;
 device_t fbd = device_add_child(sc->sc_dev, "fbd",
 device_get_unit(sc->sc_dev));
 if (fbd != ((void*)0)) {
  if (device_probe_and_attach(fbd) != 0)
   device_printf(sc->sc_dev, "failed to attach fbd device\n");
 } else
  device_printf(sc->sc_dev, "failed to add fbd child\n");


done:
 return (err);
}
