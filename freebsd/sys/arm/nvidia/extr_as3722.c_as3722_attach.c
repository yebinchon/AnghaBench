
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as3722_softc {int * irq_res; int * irq_h; int dev; int bus_addr; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int LOCK_DESTROY (struct as3722_softc*) ;
 int LOCK_INIT (struct as3722_softc*) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int as3722_get_version (struct as3722_softc*) ;
 int as3722_gpio_attach (struct as3722_softc*,int ) ;
 int as3722_init (struct as3722_softc*) ;
 int as3722_intr ;
 int as3722_parse_fdt (struct as3722_softc*,int ) ;
 int as3722_regulator_attach (struct as3722_softc*,int ) ;
 int as3722_rtc_attach (struct as3722_softc*,int ) ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct as3722_softc*,int **) ;
 int bus_teardown_intr (int ,int *,int *) ;
 char* device_get_name (int ) ;
 struct as3722_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int fdt_pinctrl_configure_by_name (int ,char*) ;
 int fdt_pinctrl_register (int ,int *) ;
 int iicbus_get_addr (int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
as3722_attach(device_t dev)
{
 struct as3722_softc *sc;
 const char *dname;
 int dunit, rv, rid;
 phandle_t node;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->bus_addr = iicbus_get_addr(dev);
 node = ofw_bus_get_node(sc->dev);
 dname = device_get_name(dev);
 dunit = device_get_unit(dev);
 rv = 0;
 LOCK_INIT(sc);

 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate interrupt.\n");
  rv = ENXIO;
  goto fail;
 }

 rv = as3722_parse_fdt(sc, node);
 if (rv != 0)
  goto fail;
 rv = as3722_get_version(sc);
 if (rv != 0)
  goto fail;
 rv = as3722_init(sc);
 if (rv != 0)
  goto fail;
 rv = as3722_regulator_attach(sc, node);
 if (rv != 0)
  goto fail;
 rv = as3722_gpio_attach(sc, node);
 if (rv != 0)
  goto fail;
 rv = as3722_rtc_attach(sc, node);
 if (rv != 0)
  goto fail;

 fdt_pinctrl_register(dev, ((void*)0));
 fdt_pinctrl_configure_by_name(dev, "default");


 rv = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), as3722_intr, sc, &sc->irq_h);
 if (rv) {
  device_printf(dev, "Cannot setup interrupt.\n");
  goto fail;
 }
 return (bus_generic_attach(dev));

fail:
 if (sc->irq_h != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_h);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 LOCK_DESTROY(sc);
 return (rv);
}
