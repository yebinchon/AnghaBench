
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {unsigned int handler_data; } ;


 int* cvmx_ciu2_mbox_to_irq ;
 int* cvmx_ciu_61xx_timer_to_irq ;
 int** cvmx_ciu_to_irq ;
 TYPE_2__ cvmx_interrupt_state ;

__attribute__((used)) static void __cvmx_interrupt_set_mapping(int irq, unsigned int en, unsigned int bit)
{
    cvmx_interrupt_state.handlers[irq].handler_data = (en << 6) | bit;
    if (en <= 7)
        cvmx_ciu_to_irq[en][bit] = irq;
    else if (en == 8)
        cvmx_ciu_61xx_timer_to_irq[bit] = irq;
    else
        cvmx_ciu2_mbox_to_irq[bit] = irq;
}
