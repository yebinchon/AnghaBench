
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {unsigned int focus_core; scalar_t__ focus_switch; scalar_t__ step_isr; } ;
typedef TYPE_1__ cvmx_debug_state_t ;


 int ISR_DELAY_COUNTER ;
 TYPE_1__ cvmx_debug_get_state () ;
 int cvmx_debug_printf (char*,unsigned int,unsigned int) ;

__attribute__((used)) static void cvmx_debug_delay_isr_core(unsigned core, uint32_t depc, int single_stepped_exc_only,
                                      cvmx_debug_state_t state)
{
    volatile uint64_t i;
    if(!single_stepped_exc_only || state.step_isr || core == state.focus_core || state.focus_switch)
        return;

    cvmx_debug_printf ("Core #%u spinning for focus at 0x%x\n", core, (unsigned int)depc);

    for(i = ISR_DELAY_COUNTER; i > 0 ; i--)
    {
       state = cvmx_debug_get_state();


       if (i > 600000 && state.focus_switch)
           i = 500000;
    }

}
