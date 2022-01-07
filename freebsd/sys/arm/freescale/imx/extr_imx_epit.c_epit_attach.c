
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct epit_softc {int clkfreq; int ctlreg; int dev; int * memres; } ;
typedef int device_t ;


 int ENXIO ;
 int EPIT_CR ;



 int EPIT_CR_CLKSRC_SHIFT ;
 int EPIT_CR_DBGEN ;
 int EPIT_CR_ENMOD ;
 int EPIT_CR_RLD ;
 int EPIT_CR_STOPEN ;
 int EPIT_CR_SWR ;
 int EPIT_CR_WAITEN ;
 int RD4 (struct epit_softc*,int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int WR4 (struct epit_softc*,int ,int ) ;
 int WR4B (struct epit_softc*,int ,int) ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct epit_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int epit_et_attach (struct epit_softc*) ;
 int epit_tc_attach (struct epit_softc*) ;
 int imx_ccm_ipg_hz () ;
 int imx_ccm_perclk_hz () ;

__attribute__((used)) static int
epit_attach(device_t dev)
{
 struct epit_softc *sc;
 int err, rid;
 uint32_t clksrc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 rid = 0;
 sc->memres = bus_alloc_resource_any(sc->dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->memres == ((void*)0)) {
  device_printf(sc->dev, "could not allocate registers\n");
  return (ENXIO);
 }




 clksrc = 129;

 switch (clksrc) {
 default:
  device_printf(dev,
      "Unsupported clock source '%d', using IPG\n", clksrc);

 case 129:
  sc->clkfreq = imx_ccm_ipg_hz();
  break;
 case 130:
  sc->clkfreq = imx_ccm_perclk_hz();
  break;
 case 128:
  sc->clkfreq = 32768;
  break;
 }





 WR4(sc, EPIT_CR, 0);

 sc->ctlreg =
     (clksrc << EPIT_CR_CLKSRC_SHIFT) |
     EPIT_CR_ENMOD |
     EPIT_CR_RLD |
     EPIT_CR_STOPEN |
     EPIT_CR_WAITEN |
     EPIT_CR_DBGEN;

 WR4B(sc, EPIT_CR, sc->ctlreg | EPIT_CR_SWR);
 while (RD4(sc, EPIT_CR) & EPIT_CR_SWR)
  continue;




 if (device_get_unit(sc->dev) == 0)
  err = epit_tc_attach(sc);
 else
  err = epit_et_attach(sc);

 return (err);
}
