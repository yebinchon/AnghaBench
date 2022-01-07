
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_clks_softc {int sc_init_hook; int sc_pdev; } ;
typedef int device_t ;


 int config_intrhook_disestablish (int *) ;
 struct twl_clks_softc* device_get_softc (int ) ;
 int twl4030_clocks ;
 int twl6030_clocks ;
 int twl_clks_add_clocks (struct twl_clks_softc*,int ) ;
 scalar_t__ twl_is_4030 (int ) ;
 scalar_t__ twl_is_6025 (int ) ;
 scalar_t__ twl_is_6030 (int ) ;

__attribute__((used)) static void
twl_clks_init(void *dev)
{
 struct twl_clks_softc *sc;

 sc = device_get_softc((device_t)dev);

 if (twl_is_4030(sc->sc_pdev))
  twl_clks_add_clocks(sc, twl4030_clocks);
 else if (twl_is_6030(sc->sc_pdev) || twl_is_6025(sc->sc_pdev))
  twl_clks_add_clocks(sc, twl6030_clocks);

 config_intrhook_disestablish(&sc->sc_init_hook);
}
