
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft5406ts_softc {int sc_evdev; } ;
typedef int device_t ;


 int FT5406_LOCK_DESTROY (struct ft5406ts_softc*) ;
 struct ft5406ts_softc* device_get_softc (int ) ;
 int evdev_free (int ) ;

__attribute__((used)) static int
ft5406ts_detach(device_t dev)
{
 struct ft5406ts_softc *sc;

 sc = device_get_softc(dev);

 evdev_free(sc->sc_evdev);

 FT5406_LOCK_DESTROY(sc);

 return (0);
}
