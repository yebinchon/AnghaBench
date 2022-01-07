
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct eventtimer {int dummy; } ;


 int CPU_TIMER0_AUTO ;
 int CPU_TIMER0_EN ;
 int mv_get_timer_control () ;
 int mv_set_timer_control (int) ;

__attribute__((used)) static int
mv_timer_stop(struct eventtimer *et)
{
 uint32_t val;

 val = mv_get_timer_control();
 val &= ~(CPU_TIMER0_EN | CPU_TIMER0_AUTO);
 mv_set_timer_control(val);
 return (0);
}
