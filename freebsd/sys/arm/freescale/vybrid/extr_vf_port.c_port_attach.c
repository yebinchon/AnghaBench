
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_softc {int * gpio_ih; int * res; int bsh; int bst; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_TYPE_MISC ;
 int NPORTS ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int ,int ,int *,struct port_softc*,int *) ;
 struct port_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int port_intr ;
 struct port_softc* port_sc ;
 int port_spec ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
port_attach(device_t dev)
{
 struct port_softc *sc;
 int irq;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, port_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 port_sc = sc;

 for (irq = 0; irq < NPORTS; irq ++) {
  if ((bus_setup_intr(dev, sc->res[1 + irq], INTR_TYPE_MISC,
      port_intr, ((void*)0), sc, &sc->gpio_ih[irq]))) {
   device_printf(dev,
       "ERROR: Unable to register interrupt handler\n");
   return (ENXIO);
  }
 }

 return (0);
}
