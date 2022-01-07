
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_IRQ_MBOX0 ;
 int cvmx_interrupt_unmask_irq (int ) ;

void cvmx_app_hotplug_shutdown_enable(void)
{
    cvmx_interrupt_unmask_irq(CVMX_IRQ_MBOX0);
}
