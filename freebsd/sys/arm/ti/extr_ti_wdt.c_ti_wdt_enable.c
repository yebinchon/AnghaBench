
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_wdt_softc {int dummy; } ;


 int DPRINTF (char*,struct ti_wdt_softc*) ;
 int TI_WDT_WSPR ;
 int TI_W_PEND_WSPR ;
 int ti_wdt_reg_wait (struct ti_wdt_softc*,int ) ;
 int ti_wdt_reg_write (struct ti_wdt_softc*,int ,int) ;

__attribute__((used)) static __inline void
ti_wdt_enable(struct ti_wdt_softc *sc)
{

 DPRINTF("enabling watchdog %p\n", sc);
 ti_wdt_reg_write(sc, TI_WDT_WSPR, 0xBBBB);
 ti_wdt_reg_wait(sc, TI_W_PEND_WSPR);
 ti_wdt_reg_write(sc, TI_WDT_WSPR, 0x4444);
 ti_wdt_reg_wait(sc, TI_W_PEND_WSPR);
}
