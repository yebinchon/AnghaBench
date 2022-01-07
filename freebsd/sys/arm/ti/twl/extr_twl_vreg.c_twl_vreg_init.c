
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_vreg_softc {int sc_init_hook; int sc_pdev; } ;
typedef int device_t ;


 int TWL_VREG_XLOCK (struct twl_vreg_softc*) ;
 int TWL_VREG_XUNLOCK (struct twl_vreg_softc*) ;
 int config_intrhook_disestablish (int *) ;
 struct twl_vreg_softc* device_get_softc (int ) ;
 int twl4030_regulators ;
 int twl6030_regulators ;
 scalar_t__ twl_is_4030 (int ) ;
 scalar_t__ twl_is_6025 (int ) ;
 scalar_t__ twl_is_6030 (int ) ;
 int twl_vreg_add_regulators (struct twl_vreg_softc*,int ) ;

__attribute__((used)) static void
twl_vreg_init(void *dev)
{
 struct twl_vreg_softc *sc;

 sc = device_get_softc((device_t)dev);

 TWL_VREG_XLOCK(sc);

 if (twl_is_4030(sc->sc_pdev))
  twl_vreg_add_regulators(sc, twl4030_regulators);
 else if (twl_is_6030(sc->sc_pdev) || twl_is_6025(sc->sc_pdev))
  twl_vreg_add_regulators(sc, twl6030_regulators);

 TWL_VREG_XUNLOCK(sc);

 config_intrhook_disestablish(&sc->sc_init_hook);
}
