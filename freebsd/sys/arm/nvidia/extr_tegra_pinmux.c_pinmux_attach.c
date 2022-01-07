
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinmux_softc {int * mipi_mem_res; int * mux_mem_res; int * pad_mem_res; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct pinmux_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fdt_pinctrl_configure_by_name (int ,char*) ;
 int fdt_pinctrl_register (int ,int *) ;

__attribute__((used)) static int
pinmux_attach(device_t dev)
{
 struct pinmux_softc * sc;
 int rid;

 sc = device_get_softc(dev);
 sc->dev = dev;

 rid = 0;
 sc->pad_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->pad_mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  return (ENXIO);
 }

 rid = 1;
 sc->mux_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mux_mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  return (ENXIO);
 }

 rid = 2;
 sc->mipi_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mipi_mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  return (ENXIO);
 }


 fdt_pinctrl_register(dev, ((void*)0));
 fdt_pinctrl_configure_by_name(dev, "boot");

 return (0);
}
