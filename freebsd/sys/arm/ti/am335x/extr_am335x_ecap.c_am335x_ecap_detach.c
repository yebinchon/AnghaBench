
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am335x_ecap_softc {scalar_t__ sc_mem_res; int sc_mem_rid; } ;
typedef int device_t ;


 int PWM_LOCK (struct am335x_ecap_softc*) ;
 int PWM_LOCK_DESTROY (struct am335x_ecap_softc*) ;
 int PWM_UNLOCK (struct am335x_ecap_softc*) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 struct am335x_ecap_softc* device_get_softc (int ) ;

__attribute__((used)) static int
am335x_ecap_detach(device_t dev)
{
 struct am335x_ecap_softc *sc;

 sc = device_get_softc(dev);

 PWM_LOCK(sc);
 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->sc_mem_rid, sc->sc_mem_res);
 PWM_UNLOCK(sc);

 PWM_LOCK_DESTROY(sc);


 return (0);
}
