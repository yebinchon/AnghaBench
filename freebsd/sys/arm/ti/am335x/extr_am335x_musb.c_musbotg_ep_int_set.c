
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct musbotg_super_softc {int dummy; } ;
struct musbotg_softc {struct musbotg_super_softc* sc_platform_data; } ;


 int IRQ_STAT0_RXSHIFT ;
 int IRQ_STAT0_TXSHIFT ;
 int USBCTRL_INTEN_CLR0 ;
 int USBCTRL_INTEN_SET0 ;
 int USBCTRL_WRITE4 (struct musbotg_super_softc*,int ,int) ;

__attribute__((used)) static void
musbotg_ep_int_set(struct musbotg_softc *sc, int ep, int on)
{
 struct musbotg_super_softc *ssc = sc->sc_platform_data;
 uint32_t epmask;

 epmask = ((1 << ep) << IRQ_STAT0_RXSHIFT);
 epmask |= ((1 << ep) << IRQ_STAT0_TXSHIFT);
 if (on)
  USBCTRL_WRITE4(ssc, USBCTRL_INTEN_SET0, epmask);
 else
  USBCTRL_WRITE4(ssc, USBCTRL_INTEN_CLR0, epmask);
}
