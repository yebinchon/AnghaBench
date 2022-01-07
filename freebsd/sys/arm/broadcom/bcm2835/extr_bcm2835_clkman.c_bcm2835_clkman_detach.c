
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_clkman_softc {scalar_t__ sc_m_res; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 struct bcm2835_clkman_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm2835_clkman_detach(device_t dev)
{
 struct bcm2835_clkman_softc *sc;

 bus_generic_detach(dev);

 sc = device_get_softc(dev);
 if (sc->sc_m_res)
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_m_res);

 return (0);
}
