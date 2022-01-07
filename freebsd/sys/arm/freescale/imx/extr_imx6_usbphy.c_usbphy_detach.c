
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbphy_softc {int * mem_res; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct usbphy_softc* device_get_softc (int ) ;

__attribute__((used)) static int
usbphy_detach(device_t dev)
{
 struct usbphy_softc *sc;

 sc = device_get_softc(dev);

 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);

 return (0);
}
