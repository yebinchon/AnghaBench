
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_gpio_softc {int * sc_busdev; int * sc_mem_res; int sc_irq_hdl; void* sc_irq_res; scalar_t__ sc_irq_rid; scalar_t__ sc_mem_rid; int sc_maxpin; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TI_GPIO_LOCK_INIT (struct ti_gpio_softc*) ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 scalar_t__ bus_setup_intr (int ,void*,int,int ,int *,struct ti_gpio_softc*,int *) ;
 struct ti_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * gpiobus_attach_bus (int ) ;
 int ti_gpio_bank_init (int ) ;
 int ti_gpio_detach (int ) ;
 int ti_gpio_intr ;
 scalar_t__ ti_gpio_pic_attach (struct ti_gpio_softc*) ;
 int ti_gpio_pin_max (int ,int *) ;

__attribute__((used)) static int
ti_gpio_attach(device_t dev)
{
 struct ti_gpio_softc *sc;
 int err;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 TI_GPIO_LOCK_INIT(sc);
 ti_gpio_pin_max(dev, &sc->sc_maxpin);
 sc->sc_maxpin++;

 sc->sc_mem_rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->sc_mem_rid, RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "Error: could not allocate mem resources\n");
  ti_gpio_detach(dev);
  return (ENXIO);
 }

 sc->sc_irq_rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &sc->sc_irq_rid, RF_ACTIVE);
 if (!sc->sc_irq_res) {
  device_printf(dev, "Error: could not allocate irq resources\n");
  ti_gpio_detach(dev);
  return (ENXIO);
 }




 if (bus_setup_intr(dev, sc->sc_irq_res,
     INTR_TYPE_MISC | INTR_MPSAFE, ti_gpio_intr, ((void*)0), sc,
     &sc->sc_irq_hdl) != 0) {
  device_printf(dev,
      "WARNING: unable to register interrupt filter\n");
  ti_gpio_detach(dev);
  return (ENXIO);
 }

 if (ti_gpio_pic_attach(sc) != 0) {
  device_printf(dev, "WARNING: unable to attach PIC\n");
  ti_gpio_detach(dev);
  return (ENXIO);
 }






 if (sc->sc_mem_res != ((void*)0)) {

  err = ti_gpio_bank_init(dev);
  if (err != 0) {
   ti_gpio_detach(dev);
   return (err);
  }
 }

 sc->sc_busdev = gpiobus_attach_bus(dev);
 if (sc->sc_busdev == ((void*)0)) {
  ti_gpio_detach(dev);
  return (ENXIO);
 }

 return (0);
}
