
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap4_prcm_softc {int sc_res; } ;


 int PRM_INSTANCE ;
 int PRM_RSTCTRL ;
 int PRM_RSTCTRL_RESET ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct omap4_prcm_softc* omap4_prcm_get_instance_softc (int ) ;

__attribute__((used)) static void
omap4_prcm_reset(void)
{
 struct omap4_prcm_softc *sc;

 sc = omap4_prcm_get_instance_softc(PRM_INSTANCE);
 if (sc == ((void*)0))
  return;

 bus_write_4(sc->sc_res, PRM_RSTCTRL,
     bus_read_4(sc->sc_res, PRM_RSTCTRL) | PRM_RSTCTRL_RESET);
 bus_read_4(sc->sc_res, PRM_RSTCTRL);
}
