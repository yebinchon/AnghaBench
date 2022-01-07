
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_interrupt_ciu_mask_unmask_irq (int,int) ;

__attribute__((used)) static void __cvmx_interrupt_ciu_mask_irq(int irq_number)
{
    __cvmx_interrupt_ciu_mask_unmask_irq(irq_number, 1);
}
