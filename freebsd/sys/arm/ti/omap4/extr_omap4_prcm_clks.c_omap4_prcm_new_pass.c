
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap4_prcm_softc {int attach_done; } ;
typedef int device_t ;


 scalar_t__ BUS_PASS_ORDER_EARLY ;
 scalar_t__ BUS_PASS_TIMER ;
 int arm_tmr_change_frequency (unsigned int) ;
 scalar_t__ bus_current_pass ;
 int bus_generic_new_pass (int ) ;
 struct omap4_prcm_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int omap4_clk_get_arm_fclk_freq (int *,unsigned int*) ;

__attribute__((used)) static void
omap4_prcm_new_pass(device_t dev)
{
 struct omap4_prcm_softc *sc = device_get_softc(dev);
 unsigned int freq;

 if (sc->attach_done ||
   bus_current_pass < (BUS_PASS_TIMER + BUS_PASS_ORDER_EARLY)) {
  bus_generic_new_pass(dev);
  return;
 }
 sc->attach_done = 1;






 if (device_get_unit(dev) == 2) {
  omap4_clk_get_arm_fclk_freq(((void*)0), &freq);
  arm_tmr_change_frequency(freq / 2);
 }

 return;
}
