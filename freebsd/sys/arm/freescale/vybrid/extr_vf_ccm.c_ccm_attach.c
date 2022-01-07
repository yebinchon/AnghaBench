
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccm_softc {int dev; int * res; int bsh; int bst; } ;
typedef int device_t ;


 int CCM_CCGR (int) ;
 int CCM_CCGRN ;
 int CCM_CCR ;
 int CCM_CSR ;
 int ENXIO ;
 int FIRC_EN ;
 int FXOSC_EN ;
 int FXOSC_RDY ;
 int READ4 (struct ccm_softc*,int ) ;
 int WRITE4 (struct ccm_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int ccm_fdt_set (struct ccm_softc*) ;
 int ccm_spec ;
 int cpufunc_nullop () ;
 struct ccm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
ccm_attach(device_t dev)
{
 struct ccm_softc *sc;
 int reg;
 int i;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, ccm_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);


 reg = READ4(sc, CCM_CCR);
 reg |= (FIRC_EN | FXOSC_EN);
 WRITE4(sc, CCM_CCR, reg);


 for (i = 0; i < 10; i++) {
  if (READ4(sc, CCM_CSR) & FXOSC_RDY) {
   device_printf(sc->dev, "On board oscillator is ready.\n");
   break;
  }

  cpufunc_nullop();
 }


 for (i = 0; i < CCM_CCGRN; i++) {
  WRITE4(sc, CCM_CCGR(i), 0xffffffff);
 }


 ccm_fdt_set(sc);

 return (0);
}
