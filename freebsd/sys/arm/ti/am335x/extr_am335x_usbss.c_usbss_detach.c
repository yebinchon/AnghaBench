
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbss_softc {scalar_t__ sc_mem_res; int sc_mem_rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int device_delete_children (int ) ;
 struct usbss_softc* device_get_softc (int ) ;

__attribute__((used)) static int
usbss_detach(device_t dev)
{
 struct usbss_softc *sc = device_get_softc(dev);


 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_mem_rid,
      sc->sc_mem_res);


 device_delete_children(dev);

 return (0);
}
