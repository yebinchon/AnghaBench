
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_softc {scalar_t__ sc_clks; scalar_t__ sc_vreg; } ;
typedef int device_t ;


 int TWL_LOCK_DESTROY (struct twl_softc*) ;
 int device_delete_child (int ,scalar_t__) ;
 struct twl_softc* device_get_softc (int ) ;

__attribute__((used)) static int
twl_detach(device_t dev)
{
 struct twl_softc *sc;

 sc = device_get_softc(dev);

 if (sc->sc_vreg)
  device_delete_child(dev, sc->sc_vreg);
 if (sc->sc_clks)
  device_delete_child(dev, sc->sc_clks);


 TWL_LOCK_DESTROY(sc);

 return (0);
}
