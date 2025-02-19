
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fb_width; int fb_height; int fb_depth; int fb_bpp; int fb_stride; int fb_pbase; int fb_size; intptr_t fb_vbase; int fb_name; } ;
struct aml8726_fb_softc {TYPE_1__ info; int * res; scalar_t__ ih_cookie; int dev; } ;
typedef int prop ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 int AML_FB_LOCK_DESTROY (struct aml8726_fb_softc*) ;
 int AML_FB_LOCK_INIT (struct aml8726_fb_softc*) ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 int aml8726_fb_cfg_canvas (struct aml8726_fb_softc*) ;
 int aml8726_fb_cfg_output (struct aml8726_fb_softc*) ;
 int aml8726_fb_cfg_video (struct aml8726_fb_softc*) ;
 int aml8726_fb_intr ;
 int aml8726_fb_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct aml8726_fb_softc*,scalar_t__*) ;
 int bus_teardown_intr (int ,int ,scalar_t__) ;
 int device_add_child (int ,char*,int ) ;
 int device_get_nameunit (int ) ;
 struct aml8726_fb_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_probe_and_attach (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ pmap_mapdev (int,int) ;
 int pmap_unmapdev (intptr_t,int) ;

__attribute__((used)) static int
aml8726_fb_attach(device_t dev)
{
 struct aml8726_fb_softc *sc = device_get_softc(dev);
 int error;
 device_t child;
 pcell_t prop;
 phandle_t node;

 sc->dev = dev;

 sc->info.fb_name = device_get_nameunit(sc->dev);

 node = ofw_bus_get_node(dev);

 if (OF_getencprop(node, "width", &prop, sizeof(prop)) <= 0) {
  device_printf(dev, "missing width attribute in FDT\n");
  return (ENXIO);
 }
 if ((prop % 8) != 0) {
  device_printf(dev,
      "width attribute in FDT must be a multiple of 8\n");
  return (ENXIO);
 }
 sc->info.fb_width = prop;

 if (OF_getencprop(node, "height", &prop, sizeof(prop)) <= 0) {
  device_printf(dev, "missing height attribute in FDT\n");
  return (ENXIO);
 }
 sc->info.fb_height = prop;

 if (OF_getencprop(node, "depth", &prop, sizeof(prop)) <= 0) {
  device_printf(dev, "missing depth attribute in FDT\n");
  return (ENXIO);
 }
 if (prop != 24) {
  device_printf(dev,
      "depth attribute in FDT is an unsupported value\n");
  return (ENXIO);
 }
 sc->info.fb_depth = prop;
 sc->info.fb_bpp = prop;

 if (OF_getencprop(node, "linebytes", &prop, sizeof(prop)) <= 0) {
  device_printf(dev, "missing linebytes attribute in FDT\n");
  return (ENXIO);
 }
 if ((prop % 8) != 0) {
  device_printf(dev,
      "linebytes attribute in FDT must be a multiple of 8\n");
  return (ENXIO);
 }
 if (prop < (sc->info.fb_width * 3)) {
  device_printf(dev,
      "linebytes attribute in FDT is too small\n");
  return (ENXIO);
 }
 sc->info.fb_stride = prop;

 if (OF_getencprop(node, "address", &prop, sizeof(prop)) <= 0) {
  device_printf(dev, "missing address attribute in FDT\n");
  return (ENXIO);
 }
 if ((prop % 8) != 0) {
  device_printf(dev,
      "address attribute in FDT must be a multiple of 8\n");
  return (ENXIO);
 }
 sc->info.fb_pbase = prop;
 sc->info.fb_size = sc->info.fb_height * sc->info.fb_stride;
 sc->info.fb_vbase = (intptr_t)pmap_mapdev(sc->info.fb_pbase,
     sc->info.fb_size);

 if (bus_alloc_resources(dev, aml8726_fb_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  pmap_unmapdev(sc->info.fb_vbase, sc->info.fb_size);
  return (ENXIO);
 }

 aml8726_fb_cfg_output(sc);

 aml8726_fb_cfg_video(sc);

 aml8726_fb_cfg_canvas(sc);

 AML_FB_LOCK_INIT(sc);

 error = bus_setup_intr(dev, sc->res[3], INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), aml8726_fb_intr, sc, &sc->ih_cookie);

 if (error) {
  device_printf(dev, "could not setup interrupt handler\n");
  goto fail;
 }

 child = device_add_child(dev, "fbd", device_get_unit(dev));

 if (!child) {
  device_printf(dev, "could not add fbd\n");
  error = ENXIO;
  goto fail;
 }

 error = device_probe_and_attach(child);

 if (error) {
  device_printf(dev, "could not attach fbd\n");
  goto fail;
 }

 return (0);

fail:
 if (sc->ih_cookie)
  bus_teardown_intr(dev, sc->res[3], sc->ih_cookie);

 AML_FB_LOCK_DESTROY(sc);

 bus_release_resources(dev, aml8726_fb_spec, sc->res);

 pmap_unmapdev(sc->info.fb_vbase, sc->info.fb_size);

 return (error);
}
