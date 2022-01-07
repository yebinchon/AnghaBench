
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gicv3_its_softc {int sc_its_flags; } ;
typedef int device_t ;


 int ITS_FLAGS_ERRATA_CAVIUM_22375 ;
 struct gicv3_its_softc* device_get_softc (int ) ;

__attribute__((used)) static void
its_quirk_cavium_22375(device_t dev)
{
 struct gicv3_its_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_its_flags |= ITS_FLAGS_ERRATA_CAVIUM_22375;
}
