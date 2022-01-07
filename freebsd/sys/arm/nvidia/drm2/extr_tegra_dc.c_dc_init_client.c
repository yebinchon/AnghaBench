
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_drm {scalar_t__ pitch_align; int drm_dev; } ;
struct TYPE_2__ {int cursor_vbase; int cursor_pbase; int drm_crtc; } ;
struct dc_softc {scalar_t__ pitch_align; TYPE_1__ tegra_crtc; int irq_ih; int irq_res; } ;
typedef int device_t ;


 int DC_CMD_INT_ENABLE ;
 int DC_CMD_INT_MASK ;
 int DC_CMD_INT_POLARITY ;
 int DC_CMD_INT_TYPE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int VM_MEMATTR_WRITE_COMBINING ;
 int WIN_A_OF_INT ;
 int WIN_A_UF_INT ;
 int WIN_B_OF_INT ;
 int WIN_B_UF_INT ;
 int WIN_C_OF_INT ;
 int WIN_C_UF_INT ;
 int WR4 (struct dc_softc*,int ,int) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct dc_softc*,int *) ;
 int dc_crtc_funcs ;
 int dc_crtc_helper_funcs ;
 int dc_init_planes (struct dc_softc*,struct tegra_drm*) ;
 int dc_intr ;
 struct dc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int drm_crtc_helper_add (int *,int *) ;
 int drm_crtc_init (int *,int *,int *) ;
 int drm_mode_crtc_set_gamma_size (int *,int) ;
 int kmem_alloc_contig (int,int,int ,unsigned long,int ,int ,int ) ;
 int vtophys (int ) ;

__attribute__((used)) static int
dc_init_client(device_t dev, device_t host1x, struct tegra_drm *drm)
{
 struct dc_softc *sc;
 int rv;

 sc = device_get_softc(dev);

 if (drm->pitch_align < sc->pitch_align)
  drm->pitch_align = sc->pitch_align;

 drm_crtc_init(&drm->drm_dev, &sc->tegra_crtc.drm_crtc, &dc_crtc_funcs);
 drm_mode_crtc_set_gamma_size(&sc->tegra_crtc.drm_crtc, 256);
 drm_crtc_helper_add(&sc->tegra_crtc.drm_crtc, &dc_crtc_helper_funcs);

 rv = dc_init_planes(sc, drm);
 if (rv!= 0){
  device_printf(dev, "Cannot init planes\n");
  return (rv);
 }

 WR4(sc, DC_CMD_INT_TYPE,
     WIN_A_UF_INT | WIN_B_UF_INT | WIN_C_UF_INT |
     WIN_A_OF_INT | WIN_B_OF_INT | WIN_C_OF_INT);

 WR4(sc, DC_CMD_INT_POLARITY,
     WIN_A_UF_INT | WIN_B_UF_INT | WIN_C_UF_INT |
     WIN_A_OF_INT | WIN_B_OF_INT | WIN_C_OF_INT);

 WR4(sc, DC_CMD_INT_ENABLE, 0);
 WR4(sc, DC_CMD_INT_MASK, 0);

 rv = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), dc_intr, sc, &sc->irq_ih);
 if (rv != 0) {
  device_printf(dev, "Cannot register interrupt handler\n");
  return (rv);
 }


 sc->tegra_crtc.cursor_vbase = kmem_alloc_contig(256 * 256 * 4,
     M_WAITOK | M_ZERO, 0, -1UL, PAGE_SIZE, 0,
     VM_MEMATTR_WRITE_COMBINING);
 sc->tegra_crtc.cursor_pbase = vtophys(sc->tegra_crtc.cursor_vbase);
 return (0);
}
