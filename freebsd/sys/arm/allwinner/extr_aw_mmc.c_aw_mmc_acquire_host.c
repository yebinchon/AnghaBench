
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_mmc_softc {scalar_t__ aw_bus_busy; int aw_mtx; } ;
typedef int device_t ;


 int AW_MMC_LOCK (struct aw_mmc_softc*) ;
 int AW_MMC_UNLOCK (struct aw_mmc_softc*) ;
 int PCATCH ;
 struct aw_mmc_softc* device_get_softc (int ) ;
 int msleep (struct aw_mmc_softc*,int *,int ,char*,int ) ;

__attribute__((used)) static int
aw_mmc_acquire_host(device_t bus, device_t child)
{
 struct aw_mmc_softc *sc;
 int error;

 sc = device_get_softc(bus);
 AW_MMC_LOCK(sc);
 while (sc->aw_bus_busy) {
  error = msleep(sc, &sc->aw_mtx, PCATCH, "mmchw", 0);
  if (error != 0) {
   AW_MMC_UNLOCK(sc);
   return (error);
  }
 }
 sc->aw_bus_busy++;
 AW_MMC_UNLOCK(sc);

 return (0);
}
