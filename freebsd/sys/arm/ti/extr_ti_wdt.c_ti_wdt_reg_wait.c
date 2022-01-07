
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_wdt_softc {int dummy; } ;


 int DELAY (int) ;
 int TI_WDT_WWPS ;
 int ti_wdt_reg_read (struct ti_wdt_softc*,int ) ;

__attribute__((used)) static __inline void
ti_wdt_reg_wait(struct ti_wdt_softc *sc, uint32_t bit)
{

 while (ti_wdt_reg_read(sc, TI_WDT_WWPS) & bit)
  DELAY(10);
}
