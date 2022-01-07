
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_hdmi_softc {scalar_t__ i2c_xref; } ;
typedef int * device_t ;


 int * OF_device_from_xref (scalar_t__) ;
 struct imx_hdmi_softc* device_get_softc (int *) ;

__attribute__((used)) static device_t
imx_hdmi_get_i2c_dev(device_t dev)
{
 struct imx_hdmi_softc *sc;

 sc = device_get_softc(dev);

 if (sc->i2c_xref == 0)
  return (((void*)0));

 return (OF_device_from_xref(sc->i2c_xref));
}
