
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_hdmi_softc {int * eh_tag; int i2c_xref; } ;
typedef int device_t ;


 int EVENTHANDLER_DEREGISTER_NOWAIT (int ,int *) ;
 int EVENTHANDLER_PRI_ANY ;
 int * EVENTHANDLER_REGISTER (int ,void (*) (void*),void*,int ) ;
 int * OF_device_from_xref (int ) ;
 scalar_t__ bootverbose ;
 int device_attach ;
 struct imx_hdmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int dwc_hdmi_init (void*) ;

__attribute__((used)) static void
imx_hdmi_init(void *dev)
{
 struct imx_hdmi_softc *sc;

 sc = device_get_softc((device_t)dev);

 if (OF_device_from_xref(sc->i2c_xref) != ((void*)0)) {
  if (sc->eh_tag != ((void*)0)) {
   EVENTHANDLER_DEREGISTER_NOWAIT(device_attach,
       sc->eh_tag);
  }
  dwc_hdmi_init(dev);
  return;
 }

 if (bootverbose)
  device_printf((device_t)dev, "Waiting for DDC i2c device\n");

 if (sc->eh_tag == ((void*)0)) {
  sc->eh_tag = EVENTHANDLER_REGISTER(device_attach,
      imx_hdmi_init, dev, EVENTHANDLER_PRI_ANY);
 }
}
