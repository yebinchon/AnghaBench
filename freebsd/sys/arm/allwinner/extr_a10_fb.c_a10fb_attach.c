
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a10fb_softc {int hdmi_evh; int res; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct a10fb_softc*,int ) ;
 int a10fb_hdmi_event ;
 int a10fb_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 struct a10fb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hdmi_event ;

__attribute__((used)) static int
a10fb_attach(device_t dev)
{
 struct a10fb_softc *sc;

 sc = device_get_softc(dev);

 sc->dev = dev;

 if (bus_alloc_resources(dev, a10fb_spec, sc->res)) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }

 sc->hdmi_evh = EVENTHANDLER_REGISTER(hdmi_event,
     a10fb_hdmi_event, sc, 0);

 return (0);
}
