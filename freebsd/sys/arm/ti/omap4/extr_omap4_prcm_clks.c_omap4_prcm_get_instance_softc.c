
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap4_prcm_softc {int sc_instance; } ;
typedef int device_t ;
typedef int devclass_t ;


 int devclass_find (char*) ;
 int devclass_get_device (int ,int) ;
 int devclass_get_maxunit (int ) ;
 struct omap4_prcm_softc* device_get_softc (int ) ;

__attribute__((used)) static struct omap4_prcm_softc *
omap4_prcm_get_instance_softc(int module_instance)
{
 int i, maxunit;
 devclass_t prcm_devclass;
 device_t dev;
 struct omap4_prcm_softc *sc;

 prcm_devclass = devclass_find("omap4_prcm");
 maxunit = devclass_get_maxunit(prcm_devclass);

 for (i = 0; i < maxunit; i++) {
  dev = devclass_get_device(prcm_devclass, i);
  sc = device_get_softc(dev);
  if (sc->sc_instance == module_instance)
   return (sc);
 }

 return (((void*)0));
}
