
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am335x_ehrpwm_softc {scalar_t__ sc_mem_res; int sc_mem_rid; int * sc_busdev; int sc_dev; } ;
typedef int device_t ;


 int PWM_LOCK (struct am335x_ehrpwm_softc*) ;
 int PWM_LOCK_DESTROY (struct am335x_ehrpwm_softc*) ;
 int PWM_UNLOCK (struct am335x_ehrpwm_softc*) ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int device_delete_child (int ,int *) ;
 struct am335x_ehrpwm_softc* device_get_softc (int ) ;

__attribute__((used)) static int
am335x_ehrpwm_detach(device_t dev)
{
 struct am335x_ehrpwm_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bus_generic_detach(sc->sc_dev)) != 0)
  return (error);

 PWM_LOCK(sc);

 if (sc->sc_busdev != ((void*)0))
  device_delete_child(dev, sc->sc_busdev);

 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->sc_mem_rid, sc->sc_mem_res);

 PWM_UNLOCK(sc);

 PWM_LOCK_DESTROY(sc);

 return (0);
}
