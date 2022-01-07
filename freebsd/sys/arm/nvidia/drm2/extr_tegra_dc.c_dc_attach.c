
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* dev; } ;
struct dc_softc {int pitch_align; int * mem_res; int * irq_res; int * hwreset_dc; int * clk_dc; int * clk_parent; int * irq_ih; void* dev; TYPE_1__ tegra_crtc; } ;
typedef int phandle_t ;
typedef void* device_t ;


 int ENXIO ;
 int LOCK_DESTROY (struct dc_softc*) ;
 int LOCK_INIT (struct dc_softc*) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TEGRA_DRM_DEREGISTER_CLIENT (int ,void*) ;
 int TEGRA_DRM_REGISTER_CLIENT (int ,void*) ;
 void* bus_alloc_resource_any (void*,int ,int*,int ) ;
 int bus_generic_attach (void*) ;
 int bus_release_resource (void*,int ,int ,int *) ;
 int bus_teardown_intr (void*,int *,int *) ;
 int clk_release (int *) ;
 int device_get_parent (void*) ;
 struct dc_softc* device_get_softc (void*) ;
 int device_printf (void*,char*) ;
 int enable_fdt_resources (struct dc_softc*) ;
 int get_fdt_resources (struct dc_softc*,int ) ;
 int hwreset_release (int *) ;
 int ofw_bus_get_node (void*) ;

__attribute__((used)) static int
dc_attach(device_t dev)
{
 struct dc_softc *sc;
 phandle_t node;
 int rid, rv;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->tegra_crtc.dev = dev;

 node = ofw_bus_get_node(sc->dev);
 LOCK_INIT(sc);

 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  goto fail;
 }

 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate IRQ resources\n");
  goto fail;
 }

 rv = get_fdt_resources(sc, node);
 if (rv != 0) {
  device_printf(dev, "Cannot parse FDT resources\n");
  goto fail;
 }
 rv = enable_fdt_resources(sc);
 if (rv != 0) {
  device_printf(dev, "Cannot enable FDT resources\n");
  goto fail;
 }







 sc->pitch_align = 256;

 rv = TEGRA_DRM_REGISTER_CLIENT(device_get_parent(sc->dev), sc->dev);
 if (rv != 0) {
  device_printf(dev, "Cannot register DRM device\n");
  goto fail;
 }

 return (bus_generic_attach(dev));

fail:
 TEGRA_DRM_DEREGISTER_CLIENT(device_get_parent(sc->dev), sc->dev);
 if (sc->irq_ih != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_ih);
 if (sc->clk_parent != ((void*)0))
  clk_release(sc->clk_parent);
 if (sc->clk_dc != ((void*)0))
  clk_release(sc->clk_dc);
 if (sc->hwreset_dc != ((void*)0))
  hwreset_release(sc->hwreset_dc);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);
 LOCK_DESTROY(sc);

 return (ENXIO);
}
