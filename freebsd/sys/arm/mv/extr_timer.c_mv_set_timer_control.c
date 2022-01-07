
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int timer_bsh; int timer_bst; } ;


 int CPU_TIMER_CONTROL ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 TYPE_1__* timer_softc ;

__attribute__((used)) static void
mv_set_timer_control(uint32_t val)
{

 bus_space_write_4(timer_softc->timer_bst,
     timer_softc->timer_bsh, CPU_TIMER_CONTROL, val);
}
