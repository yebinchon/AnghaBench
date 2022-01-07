
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int step_isr; } ;
typedef TYPE_2__ cvmx_debug_state_t ;
struct TYPE_6__ {int debug; int status; } ;
struct TYPE_8__ {int remote_controlled; TYPE_1__ cop0; } ;
typedef TYPE_3__ cvmx_debug_core_context_t ;


 int CVMX_SYNCW ;
 scalar_t__ cvmx_interrupt_in_isr ;

__attribute__((used)) static void cvmx_debug_remote_mem_wait_for_resume(volatile cvmx_debug_core_context_t *context, cvmx_debug_state_t state)
{




    if(!state.step_isr &&
       (context->cop0.debug & 0x1) &&
       !(context->cop0.debug & 0x1e) &&
       ((context->cop0.status & 0x2) || cvmx_interrupt_in_isr))
        return;

    context->remote_controlled = 1;
    CVMX_SYNCW;
    while (context->remote_controlled)
        ;
    CVMX_SYNCW;
}
