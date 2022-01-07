
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_pwm_softc {int * res; int * busdev; int dev; } ;
typedef int device_t ;


 int aw_pwm_spec ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int **) ;
 int device_delete_child (int ,int *) ;
 struct aw_pwm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
aw_pwm_detach(device_t dev)
{
 struct aw_pwm_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bus_generic_detach(sc->dev)) != 0) {
  device_printf(sc->dev, "cannot detach child devices\n");
  return (error);
 }

 if (sc->busdev != ((void*)0))
  device_delete_child(dev, sc->busdev);

 if (sc->res != ((void*)0))
  bus_release_resources(dev, aw_pwm_spec, &sc->res);

 return (0);
}
