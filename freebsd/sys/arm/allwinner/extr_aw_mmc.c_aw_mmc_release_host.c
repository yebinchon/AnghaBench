
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_mmc_softc {int aw_bus_busy; } ;
typedef int device_t ;


 int AW_MMC_LOCK (struct aw_mmc_softc*) ;
 int AW_MMC_UNLOCK (struct aw_mmc_softc*) ;
 struct aw_mmc_softc* device_get_softc (int ) ;
 int wakeup (struct aw_mmc_softc*) ;

__attribute__((used)) static int
aw_mmc_release_host(device_t bus, device_t child)
{
 struct aw_mmc_softc *sc;

 sc = device_get_softc(bus);
 AW_MMC_LOCK(sc);
 sc->aw_bus_busy--;
 wakeup(sc);
 AW_MMC_UNLOCK(sc);

 return (0);
}
