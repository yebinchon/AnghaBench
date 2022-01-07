
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int timer_bsh; int timer_bst; } ;


 scalar_t__ CPU_TIMER0 ;
 int bus_space_read_4 (int ,int ,scalar_t__) ;
 TYPE_1__* timer_softc ;

__attribute__((used)) static uint32_t
mv_get_timer(uint32_t timer)
{

 return (bus_space_read_4(timer_softc->timer_bst,
     timer_softc->timer_bsh, CPU_TIMER0 + timer * 0x8));
}
