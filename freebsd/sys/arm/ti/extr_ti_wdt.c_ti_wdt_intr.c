
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_wdt_softc {int dummy; } ;


 int DPRINTF (char*,struct ti_wdt_softc*) ;
 int TI_IRQ_EV_DLY ;
 int TI_IRQ_EV_OVF ;
 int TI_WDT_WIRQSTAT ;
 int ti_wdt_reg_write (struct ti_wdt_softc*,int ,int) ;

__attribute__((used)) static void
ti_wdt_intr(void *arg)
{
 struct ti_wdt_softc *sc;

 sc = arg;
 DPRINTF("interrupt %p", sc);
 ti_wdt_reg_write(sc, TI_WDT_WIRQSTAT, TI_IRQ_EV_OVF | TI_IRQ_EV_DLY);

}
