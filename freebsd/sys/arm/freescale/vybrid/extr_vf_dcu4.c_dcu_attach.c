
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panel_info {int width; int height; int backlight_pin; } ;
struct TYPE_2__ {int fb_width; int fb_height; int fb_stride; int fb_bpp; int fb_depth; int fb_size; intptr_t fb_vbase; intptr_t fb_pbase; int fb_name; } ;
struct dcu_softc {int * dev; int * sc_fbd; TYPE_1__ sc_info; struct panel_info* panel; int ih; int * res; int bsh; int bst; } ;
typedef int int8_t ;
typedef int * device_t ;


 int ENXIO ;
 int GPIO_PIN_HIGH ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_SET (int *,int ,int ) ;
 int GPIO_PIN_SETFLAGS (int *,int ,int ) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int M_DEVBUF ;
 int M_ZERO ;
 int PAGE_SIZE ;
 scalar_t__ bus_alloc_resources (int *,int ,int *) ;
 int bus_setup_intr (int *,int ,int,int *,int ,struct dcu_softc*,int *) ;
 scalar_t__ contigmalloc (int,int ,int ,int ,int ,int ,int ) ;
 int dcu_init (struct dcu_softc*) ;
 int dcu_intr ;
 int dcu_spec ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 int * device_add_child (int *,char*,int ) ;
 int device_get_nameunit (int *) ;
 struct dcu_softc* device_get_softc (int *) ;
 int device_get_unit (int *) ;
 int device_printf (int *,char*) ;
 scalar_t__ device_probe_and_attach (int *) ;
 scalar_t__ get_panel_info (struct dcu_softc*,struct panel_info*) ;
 int memset (int *,int,int) ;
 int printf (char*,intptr_t,...) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int tcon_bypass () ;
 scalar_t__ vtophys (intptr_t) ;

__attribute__((used)) static int
dcu_attach(device_t dev)
{
 struct panel_info panel;
 struct dcu_softc *sc;
 device_t gpio_dev;
 int err;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, dcu_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);


 err = bus_setup_intr(dev, sc->res[1], INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), dcu_intr, sc, &sc->ih);
 if (err) {
  device_printf(dev, "Unable to alloc interrupt resource.\n");
  return (ENXIO);
 }

 if (get_panel_info(sc, &panel)) {
  device_printf(dev, "Can't get panel info\n");
  return (ENXIO);
 }

 sc->panel = &panel;


 tcon_bypass();


 gpio_dev = devclass_get_device(devclass_find("gpio"), 0);
 if (gpio_dev == ((void*)0)) {
  device_printf(sc->dev, "Error: failed to get the GPIO dev\n");
  return (1);
 }



 GPIO_PIN_SETFLAGS(gpio_dev, panel.backlight_pin, GPIO_PIN_OUTPUT);
 GPIO_PIN_SET(gpio_dev, panel.backlight_pin, GPIO_PIN_HIGH);

 sc->sc_info.fb_width = panel.width;
 sc->sc_info.fb_height = panel.height;
 sc->sc_info.fb_stride = sc->sc_info.fb_width * 3;
 sc->sc_info.fb_bpp = sc->sc_info.fb_depth = 24;
 sc->sc_info.fb_size = sc->sc_info.fb_height * sc->sc_info.fb_stride;
 sc->sc_info.fb_vbase = (intptr_t)contigmalloc(sc->sc_info.fb_size,
     M_DEVBUF, M_ZERO, 0, ~0, PAGE_SIZE, 0);
 sc->sc_info.fb_pbase = (intptr_t)vtophys(sc->sc_info.fb_vbase);







 memset((int8_t *)sc->sc_info.fb_vbase, 0x0, sc->sc_info.fb_size);

 dcu_init(sc);

 sc->sc_info.fb_name = device_get_nameunit(dev);


 sc->sc_fbd = device_add_child(dev, "fbd", device_get_unit(dev));
 if (sc->sc_fbd == ((void*)0))
  device_printf(dev, "Can't attach fbd device\n");

 if (device_probe_and_attach(sc->sc_fbd) != 0) {
  device_printf(sc->dev, "Failed to attach fbd device\n");
 }

 return (0);
}
