
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zy7_devcfg_softc {TYPE_1__* sc_ctl_dev; int intrhandle; int * irq_res; int * mem_res; int dev; } ;
typedef int device_t ;
struct TYPE_4__ {int actual_frequency; int frequency; int source; } ;
struct TYPE_3__ {struct zy7_devcfg_softc* si_drv1; } ;


 int DEVCFG_SC_LOCK_INIT (struct zy7_devcfg_softc*) ;
 int ENOMEM ;
 int ENXIO ;
 int FCLK_NUM ;
 int GID_WHEEL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RD4 (struct zy7_devcfg_softc*,int ) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int UID_ROOT ;
 int WR4 (struct zy7_devcfg_softc*,int ,int) ;
 int ZY7_DEVCFG_INT_ALL ;
 int ZY7_DEVCFG_INT_MASK ;
 int ZY7_DEVCFG_INT_STATUS ;
 int ZY7_DEVCFG_MCTRL ;
 int ZY7_DEVCFG_MCTRL_PS_VERS_MASK ;
 int ZY7_DEVCFG_MCTRL_PS_VERS_SHIFT ;
 int ZY7_DEVCFG_UNLOCK ;
 int ZY7_DEVCFG_UNLOCK_MAGIC ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct zy7_devcfg_softc*,int *) ;
 struct zy7_devcfg_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 TYPE_2__* fclk_configs ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*) ;
 int zy7_devcfg_cdevsw ;
 int zy7_devcfg_detach (int ) ;
 scalar_t__ zy7_devcfg_init_fclk_sysctl (struct zy7_devcfg_softc*) ;
 int zy7_devcfg_intr ;
 struct zy7_devcfg_softc* zy7_devcfg_softc_p ;
 scalar_t__ zy7_pl_fclk_enabled (int) ;
 int zy7_pl_fclk_get_freq (int) ;
 int zy7_pl_fclk_get_source (int) ;
 int zy7_ps_vers ;

__attribute__((used)) static int
zy7_devcfg_attach(device_t dev)
{
 struct zy7_devcfg_softc *sc = device_get_softc(dev);
 int i;
 int rid, err;


 if (zy7_devcfg_softc_p != ((void*)0))
  return (ENXIO);

 sc->dev = dev;

 DEVCFG_SC_LOCK_INIT(sc);


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
          RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "could not allocate memory resources.\n");
  zy7_devcfg_detach(dev);
  return (ENOMEM);
 }


 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
          RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "cannot allocate IRQ\n");
  zy7_devcfg_detach(dev);
  return (ENOMEM);
 }


 err = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
        ((void*)0), zy7_devcfg_intr, sc, &sc->intrhandle);
 if (err) {
  device_printf(dev, "cannot setup IRQ\n");
  zy7_devcfg_detach(dev);
  return (err);
 }


 sc->sc_ctl_dev = make_dev(&zy7_devcfg_cdevsw, 0,
     UID_ROOT, GID_WHEEL, 0600, "devcfg");
 if (sc->sc_ctl_dev == ((void*)0)) {
  device_printf(dev, "failed to create /dev/devcfg");
  zy7_devcfg_detach(dev);
  return (ENXIO);
 }
 sc->sc_ctl_dev->si_drv1 = sc;

 zy7_devcfg_softc_p = sc;


 WR4(sc, ZY7_DEVCFG_UNLOCK, ZY7_DEVCFG_UNLOCK_MAGIC);


 WR4(sc, ZY7_DEVCFG_INT_STATUS, ZY7_DEVCFG_INT_ALL);
 WR4(sc, ZY7_DEVCFG_INT_MASK, 0xffffffff);


 zy7_ps_vers = (RD4(sc, ZY7_DEVCFG_MCTRL) &
         ZY7_DEVCFG_MCTRL_PS_VERS_MASK) >>
  ZY7_DEVCFG_MCTRL_PS_VERS_SHIFT;

 for (i = 0; i < FCLK_NUM; i++) {
  fclk_configs[i].source = zy7_pl_fclk_get_source(i);
  fclk_configs[i].actual_frequency =
   zy7_pl_fclk_enabled(i) ? zy7_pl_fclk_get_freq(i) : 0;

  fclk_configs[i].frequency = fclk_configs[i].actual_frequency;
 }

 if (zy7_devcfg_init_fclk_sysctl(sc) < 0)
  device_printf(dev, "failed to initialized sysctl tree\n");

 return (0);
}
