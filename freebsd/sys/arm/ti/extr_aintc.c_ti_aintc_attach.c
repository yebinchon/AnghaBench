
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_aintc_softc {int * aintc_res; int aintc_bsh; int aintc_bst; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTC_REVISION ;
 int INTC_SYSCONFIG ;
 int INTC_SYSSTATUS ;
 int INTC_THRESHOLD ;
 int aintc_read_4 (struct ti_aintc_softc*,int ) ;
 int aintc_write_4 (struct ti_aintc_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct ti_aintc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 scalar_t__ ti_aintc_pic_attach (struct ti_aintc_softc*) ;
 int ti_aintc_spec ;

__attribute__((used)) static int
ti_aintc_attach(device_t dev)
{
 struct ti_aintc_softc *sc = device_get_softc(dev);
 uint32_t x;

 sc->sc_dev = dev;

 if (bus_alloc_resources(dev, ti_aintc_spec, sc->aintc_res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 sc->aintc_bst = rman_get_bustag(sc->aintc_res[0]);
 sc->aintc_bsh = rman_get_bushandle(sc->aintc_res[0]);

 x = aintc_read_4(sc, INTC_REVISION);
 device_printf(dev, "Revision %u.%u\n",(x >> 4) & 0xF, x & 0xF);


 aintc_write_4(sc, INTC_SYSCONFIG, 2);


 while(!(aintc_read_4(sc, INTC_SYSSTATUS) & 1));


 aintc_write_4(sc, INTC_THRESHOLD, 0xFF);

 if (ti_aintc_pic_attach(sc) != 0) {
  device_printf(dev, "could not attach PIC\n");
  return (ENXIO);
 }
 return (0);
}
