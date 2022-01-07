
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iomux_softc {int last_gpregaddr; int * mem_res; int dev; } ;
typedef int device_t ;


 int ENXIO ;







 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct iomux_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fdt_pinctrl_configure_tree (int ) ;
 int fdt_pinctrl_register (int ,char*) ;
 int imx_soc_type () ;
 struct iomux_softc* iomux_sc ;

__attribute__((used)) static int
iomux_attach(device_t dev)
{
 struct iomux_softc * sc;
 int rid;

 sc = device_get_softc(dev);
 sc->dev = dev;

 switch (imx_soc_type()) {
 case 134:
  sc->last_gpregaddr = 1 * sizeof(uint32_t);
  break;
 case 133:
  sc->last_gpregaddr = 2 * sizeof(uint32_t);
  break;
 case 132:
 case 130:
 case 129:
 case 131:
  sc->last_gpregaddr = 13 * sizeof(uint32_t);
  break;
 case 128:
  sc->last_gpregaddr = 14 * sizeof(uint32_t);
  break;
 default:
  device_printf(dev, "Unknown SoC type\n");
  return (ENXIO);
 }

 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  return (ENXIO);
 }

 iomux_sc = sc;
 fdt_pinctrl_register(dev, "fsl,pins");
 fdt_pinctrl_configure_tree(dev);

 return (0);
}
