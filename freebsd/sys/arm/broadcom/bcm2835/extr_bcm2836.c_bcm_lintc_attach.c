
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_lintc_softc {int * bls_mem; int bls_bsh; int bls_bst; int bls_dev; } ;
typedef int device_t ;


 int BCM_LINTC_CONTROL_REG ;
 int BCM_LINTC_LOCK_INIT (struct bcm_lintc_softc*) ;
 int BCM_LINTC_MBOX_CFG_REG (int) ;
 int BCM_LINTC_MCR_IRQ_EN_MBOX (int ) ;
 int BCM_LINTC_PRESCALER_REG ;
 int BCM_LINTC_PSR_19_2 ;
 int BCM_LINTC_TIMER_CFG_REG (int) ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 scalar_t__ bcm_lintc_pic_attach (struct bcm_lintc_softc*) ;
 struct bcm_lintc_softc* bcm_lintc_sc ;
 int bcm_lintc_write_4 (struct bcm_lintc_softc*,int ,int ) ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct bcm_lintc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
bcm_lintc_attach(device_t dev)
{
 struct bcm_lintc_softc *sc;
 int cpu, rid;

 sc = device_get_softc(dev);

 sc->bls_dev = dev;
 if (bcm_lintc_sc != ((void*)0))
  return (ENXIO);

 rid = 0;
 sc->bls_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->bls_mem == ((void*)0)) {
  device_printf(dev, "could not allocate memory resource\n");
  return (ENXIO);
 }

 sc->bls_bst = rman_get_bustag(sc->bls_mem);
 sc->bls_bsh = rman_get_bushandle(sc->bls_mem);

 bcm_lintc_write_4(sc, BCM_LINTC_CONTROL_REG, 0);
 bcm_lintc_write_4(sc, BCM_LINTC_PRESCALER_REG, BCM_LINTC_PSR_19_2);


 for (cpu = 0; cpu < 4; cpu++)
  bcm_lintc_write_4(sc, BCM_LINTC_TIMER_CFG_REG(cpu), 0);
 if (bcm_lintc_pic_attach(sc) != 0) {
  device_printf(dev, "could not attach PIC\n");
  return (ENXIO);
 }

 BCM_LINTC_LOCK_INIT(sc);
 bcm_lintc_sc = sc;
 return (0);
}
