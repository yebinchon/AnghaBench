
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {int irq_timer_wd_clr; int bridge_irq_cause; } ;


 int BRIDGE_IRQ_MASK ;
 int CPU_TIMER2_AUTO ;
 int CPU_TIMER2_EN ;
 int IRQ_TIMER_WD_MASK ;
 int RSTOUTn_MASK ;
 int WD_RST_OUT_EN ;
 int mv_get_timer_control () ;
 int mv_set_timer_control (int) ;
 int read_cpu_ctrl (int ) ;
 TYPE_2__* timer_softc ;
 int write_cpu_ctrl (int ,int) ;

__attribute__((used)) static void
mv_watchdog_disable_armv5(void)
{
 uint32_t val, irq_cause,irq_mask;

 val = mv_get_timer_control();
 val &= ~(CPU_TIMER2_EN | CPU_TIMER2_AUTO);
 mv_set_timer_control(val);

 val = read_cpu_ctrl(RSTOUTn_MASK);
 val &= ~WD_RST_OUT_EN;
 write_cpu_ctrl(RSTOUTn_MASK, val);

 irq_mask = read_cpu_ctrl(BRIDGE_IRQ_MASK);
 irq_mask &= ~(IRQ_TIMER_WD_MASK);
 write_cpu_ctrl(BRIDGE_IRQ_MASK, irq_mask);

 irq_cause = read_cpu_ctrl(timer_softc->config->bridge_irq_cause);
 irq_cause &= timer_softc->config->irq_timer_wd_clr;
 write_cpu_ctrl(timer_softc->config->bridge_irq_cause, irq_cause);
}
