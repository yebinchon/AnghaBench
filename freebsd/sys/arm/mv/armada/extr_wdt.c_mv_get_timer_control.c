
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int wdt_res; } ;


 int CPU_TIMER_CONTROL ;
 int bus_read_4 (int ,int ) ;
 TYPE_1__* wdt_softc ;

__attribute__((used)) static __inline uint32_t
mv_get_timer_control(void)
{

 return (bus_read_4(wdt_softc->wdt_res, CPU_TIMER_CONTROL));
}
