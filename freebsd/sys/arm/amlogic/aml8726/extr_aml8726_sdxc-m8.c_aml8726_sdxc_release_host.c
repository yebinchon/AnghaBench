
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_sdxc_softc {int bus_busy; } ;
typedef int device_t ;


 int AML_SDXC_LOCK (struct aml8726_sdxc_softc*) ;
 int AML_SDXC_UNLOCK (struct aml8726_sdxc_softc*) ;
 struct aml8726_sdxc_softc* device_get_softc (int ) ;
 int wakeup (struct aml8726_sdxc_softc*) ;

__attribute__((used)) static int
aml8726_sdxc_release_host(device_t bus, device_t child)
{
 struct aml8726_sdxc_softc *sc = device_get_softc(bus);

 AML_SDXC_LOCK(sc);

 sc->bus_busy--;
 wakeup(sc);

 AML_SDXC_UNLOCK(sc);

 return (0);
}
