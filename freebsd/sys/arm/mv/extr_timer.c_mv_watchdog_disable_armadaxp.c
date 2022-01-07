
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {int irq_timer_wd_clr; int bridge_irq_cause; } ;


 int CPU_TIMER2_AUTO ;
 int CPU_TIMER2_EN ;
 int RSTOUTn_MASK_ARMV7 ;
 int RSTOUTn_MASK_WD ;
 int WD_CPU0_MASK ;
 int WD_GLOBAL_MASK ;
 int WD_RSTOUTn_MASK ;
 int mv_get_timer_control () ;
 int mv_set_timer_control (int) ;
 int read_cpu_ctrl (int ) ;
 int read_cpu_misc (int ) ;
 int read_cpu_mp_clocks (int ) ;
 TYPE_2__* timer_softc ;
 int write_cpu_ctrl (int ,int) ;
 int write_cpu_misc (int ,int) ;
 int write_cpu_mp_clocks (int ,int) ;

__attribute__((used)) static void
mv_watchdog_disable_armadaxp(void)
{
 uint32_t val, irq_cause;

 val = read_cpu_mp_clocks(WD_RSTOUTn_MASK);
 val &= ~(WD_GLOBAL_MASK | WD_CPU0_MASK);
 write_cpu_mp_clocks(WD_RSTOUTn_MASK, val);

 val = read_cpu_misc(RSTOUTn_MASK_ARMV7);
 val |= RSTOUTn_MASK_WD;
 write_cpu_misc(RSTOUTn_MASK_ARMV7, RSTOUTn_MASK_WD);

 irq_cause = read_cpu_ctrl(timer_softc->config->bridge_irq_cause);
 irq_cause &= timer_softc->config->irq_timer_wd_clr;
 write_cpu_ctrl(timer_softc->config->bridge_irq_cause, irq_cause);

 val = mv_get_timer_control();
 val &= ~(CPU_TIMER2_EN | CPU_TIMER2_AUTO);
 mv_set_timer_control(val);
}
