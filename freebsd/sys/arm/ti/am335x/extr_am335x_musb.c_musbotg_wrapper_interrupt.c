
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct musbotg_super_softc {int dummy; } ;
struct musbotg_softc {int sc_id; struct musbotg_super_softc* sc_platform_data; } ;


 int DPRINTFN (int,char*,int ,int,int,int) ;
 int IRQ_STAT1_DRVVBUS ;
 int USBCTRL_IRQ_STAT0 ;
 int USBCTRL_IRQ_STAT1 ;
 int USBCTRL_READ4 (struct musbotg_super_softc*,int ) ;
 int USBCTRL_STAT ;
 int USBCTRL_WRITE4 (struct musbotg_super_softc*,int ,int) ;
 int musbotg_interrupt (void*,int,int,int) ;
 int musbotg_vbus_interrupt (struct musbotg_softc*,int) ;

__attribute__((used)) static void
musbotg_wrapper_interrupt(void *arg)
{
 struct musbotg_softc *sc = arg;
 struct musbotg_super_softc *ssc = sc->sc_platform_data;
 uint32_t stat, stat0, stat1;

 stat = USBCTRL_READ4(ssc, USBCTRL_STAT);
 stat0 = USBCTRL_READ4(ssc, USBCTRL_IRQ_STAT0);
 stat1 = USBCTRL_READ4(ssc, USBCTRL_IRQ_STAT1);
 if (stat0)
  USBCTRL_WRITE4(ssc, USBCTRL_IRQ_STAT0, stat0);
 if (stat1)
  USBCTRL_WRITE4(ssc, USBCTRL_IRQ_STAT1, stat1);

 DPRINTFN(4, "port%d: stat0=%08x stat1=%08x, stat=%08x\n",
     sc->sc_id, stat0, stat1, stat);

 if (stat1 & IRQ_STAT1_DRVVBUS)
  musbotg_vbus_interrupt(sc, stat & 1);

 musbotg_interrupt(arg, ((stat0 >> 16) & 0xffff),
     stat0 & 0xffff, stat1 & 0xff);
}
