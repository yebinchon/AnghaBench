
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CPU_TIMER_WD_AUTO ;
 int CPU_TIMER_WD_EN ;
 int mv_get_timer_control () ;
 int mv_set_timer_control (int) ;
 int mv_wdt_disable_armada_38x_xp_helper () ;

__attribute__((used)) static void
mv_wdt_disable_armada_38x(void)
{
 uint32_t val;

 val = mv_get_timer_control();
 val &= ~(CPU_TIMER_WD_EN | CPU_TIMER_WD_AUTO);
 mv_set_timer_control(val);

 mv_wdt_disable_armada_38x_xp_helper();
}
