
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt1310_intc_softc {int ri_res; int ri_bsh; int ri_bst; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {int ri_trig; int ri_prio; } ;


 int ENXIO ;
 int INTC_NIRQS ;
 int RF_ACTIVE ;
 scalar_t__ RT_INTC_ICCR ;
 scalar_t__ RT_INTC_IECR ;
 scalar_t__ RT_INTC_IMR ;
 scalar_t__ RT_INTC_SCR0 ;
 scalar_t__ RT_INTC_SVR0 ;
 int RT_INTC_TRIG_SHIF ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct rt1310_intc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 struct rt1310_intc_softc* intc_softc ;
 int intc_write_4 (struct rt1310_intc_softc*,scalar_t__,int) ;
 TYPE_1__* irqdef ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int rt1310_pic_attach (struct rt1310_intc_softc*) ;

__attribute__((used)) static int
rt1310_intc_attach(device_t dev)
{
 struct rt1310_intc_softc *sc = device_get_softc(dev);
 int rid = 0;
 int i;

 if (intc_softc)
  return (ENXIO);

 sc->dev = dev;

 sc->ri_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->ri_res) {
  device_printf(dev, "could not alloc resources\n");
  return (ENXIO);
 }

 sc->ri_bst = rman_get_bustag(sc->ri_res);
 sc->ri_bsh = rman_get_bushandle(sc->ri_res);
 intc_softc = sc;
 rt1310_pic_attach(sc);

 intc_write_4(sc, RT_INTC_IECR, 0);
 intc_write_4(sc, RT_INTC_ICCR, ~0);

 for (i = 0; i <= INTC_NIRQS; ++i) {
  intc_write_4(sc, RT_INTC_SCR0+i*4,
   (irqdef[i].ri_trig << RT_INTC_TRIG_SHIF) |
   irqdef[i].ri_prio);
  intc_write_4(sc, RT_INTC_SVR0+i*4, i);
 }


 intc_write_4(sc, RT_INTC_ICCR, ~0);
 intc_write_4(sc, RT_INTC_IMR, 0);
 return (0);
}
