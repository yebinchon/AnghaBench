
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_uhh_softc {int* port_mode; } ;
typedef int device_t ;


 int OMAP_HS_USB_PORTS ;
 struct omap_uhh_softc* device_get_softc (int ) ;

int
omap_usb_port_mode(device_t dev, int port)
{
 struct omap_uhh_softc *isc;

 isc = device_get_softc(dev);
 if ((port < 0) || (port >= OMAP_HS_USB_PORTS))
  return (-1);

 return isc->port_mode[port];
}
