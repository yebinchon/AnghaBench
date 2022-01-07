
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbphy_softc {int dummy; } ;
typedef int device_t ;


 struct usbphy_softc* device_get_softc (int ) ;
 int imx_ccm_usbphy_enable (int ) ;

__attribute__((used)) static int
usbphy_attach(device_t dev)
{
 struct usbphy_softc *sc;

 sc = device_get_softc(dev);




 imx_ccm_usbphy_enable(dev);

 return (0);
}
