
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ sc_mode; } ;
struct musbotg_super_softc {TYPE_1__ sc_otg; } ;


 scalar_t__ MUSB2_DEVICE_MODE ;
 int USBCTRL_READ4 (struct musbotg_super_softc*,int ) ;
 int USBCTRL_STAT ;
 int musbotg_vbus_interrupt (TYPE_1__*,int) ;

__attribute__((used)) static void
musbotg_vbus_poll(struct musbotg_super_softc *sc)
{
 uint32_t stat;

 if (sc->sc_otg.sc_mode == MUSB2_DEVICE_MODE)
  musbotg_vbus_interrupt(&sc->sc_otg, 1);
 else {
  stat = USBCTRL_READ4(sc, USBCTRL_STAT);
  musbotg_vbus_interrupt(&sc->sc_otg, stat & 1);
 }
}
