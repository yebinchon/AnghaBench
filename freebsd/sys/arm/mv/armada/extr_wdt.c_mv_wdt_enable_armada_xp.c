
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BRIDGE_IRQ_CAUSE_ARMADAXP ;
 int CPU_TIMER2_AUTO ;
 int CPU_TIMER2_EN ;
 int CPU_TIMER_WD_25MHZ_EN ;
 int IRQ_TIMER_WD_CLR_ARMADAXP ;
 int mv_get_timer_control () ;
 int mv_set_timer_control (int) ;
 int mv_wdt_enable_armada_38x_xp_helper () ;
 int read_cpu_ctrl (int ) ;
 int write_cpu_ctrl (int ,int) ;

__attribute__((used)) static void
mv_wdt_enable_armada_xp(void)
{
 uint32_t val, irq_cause;
 irq_cause = read_cpu_ctrl(BRIDGE_IRQ_CAUSE_ARMADAXP);
 irq_cause &= IRQ_TIMER_WD_CLR_ARMADAXP;
 write_cpu_ctrl(BRIDGE_IRQ_CAUSE_ARMADAXP, irq_cause);

 mv_wdt_enable_armada_38x_xp_helper();

 val = mv_get_timer_control();
 val |= CPU_TIMER2_EN | CPU_TIMER2_AUTO | CPU_TIMER_WD_25MHZ_EN;
 mv_set_timer_control(val);
}
