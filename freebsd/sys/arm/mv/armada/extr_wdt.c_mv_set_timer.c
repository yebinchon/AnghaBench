
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int wdt_res; } ;


 scalar_t__ CPU_TIMER0 ;
 int bus_write_4 (int ,scalar_t__,int) ;
 TYPE_1__* wdt_softc ;

__attribute__((used)) static __inline void
mv_set_timer(uint32_t timer, uint32_t val)
{

 bus_write_4(wdt_softc->wdt_res, CPU_TIMER0 + timer * 0x8, val);
}
