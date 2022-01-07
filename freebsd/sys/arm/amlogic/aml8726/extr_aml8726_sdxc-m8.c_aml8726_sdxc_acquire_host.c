
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_sdxc_softc {scalar_t__ bus_busy; int mtx; } ;
typedef int device_t ;


 int AML_SDXC_LOCK (struct aml8726_sdxc_softc*) ;
 int AML_SDXC_UNLOCK (struct aml8726_sdxc_softc*) ;
 int PZERO ;
 struct aml8726_sdxc_softc* device_get_softc (int ) ;
 int hz ;
 int mtx_sleep (struct aml8726_sdxc_softc*,int *,int ,char*,int) ;

__attribute__((used)) static int
aml8726_sdxc_acquire_host(device_t bus, device_t child)
{
 struct aml8726_sdxc_softc *sc = device_get_softc(bus);

 AML_SDXC_LOCK(sc);

 while (sc->bus_busy)
  mtx_sleep(sc, &sc->mtx, PZERO, "sdxc", hz / 5);
 sc->bus_busy++;

 AML_SDXC_UNLOCK(sc);

 return (0);
}
