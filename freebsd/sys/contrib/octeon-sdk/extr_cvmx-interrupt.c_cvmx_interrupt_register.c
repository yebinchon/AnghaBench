
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cvmx_interrupt_func_t ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {void* data; int handler; } ;


 int CVMX_IRQ_MAX ;
 int CVMX_SYNCWS ;
 TYPE_2__ cvmx_interrupt_state ;
 int cvmx_warn (char*,int) ;

void cvmx_interrupt_register(int irq_number, cvmx_interrupt_func_t func, void *user_arg)
{
    if (irq_number >= CVMX_IRQ_MAX || irq_number < 0) {
        cvmx_warn("cvmx_interrupt_register: Illegal irq_number %d\n", irq_number);
        return;
    }
    cvmx_interrupt_state.handlers[irq_number].handler = func;
    cvmx_interrupt_state.handlers[irq_number].data = user_arg;
    CVMX_SYNCWS;
}
