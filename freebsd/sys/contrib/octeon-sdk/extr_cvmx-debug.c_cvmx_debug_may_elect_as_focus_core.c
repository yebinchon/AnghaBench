
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned int handler_cores; unsigned int focus_core; unsigned int known_cores; } ;
typedef TYPE_2__ cvmx_debug_state_t ;
struct TYPE_7__ {scalar_t__ ddbl; scalar_t__ ddbs; scalar_t__ dbp; scalar_t__ dib; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_debug_register_t ;


 int cvmx_debug_set_focus_core (TYPE_2__*,int) ;

__attribute__((used)) static void cvmx_debug_may_elect_as_focus_core(cvmx_debug_state_t *state, int core, cvmx_debug_register_t *debug_reg)
{

    if (state->handler_cores & (1u << state->focus_core))
        return;


    if (debug_reg->s.dib || debug_reg->s.dbp || debug_reg->s.ddbs || debug_reg->s.ddbl)
        cvmx_debug_set_focus_core(state, core);




    if ((state->known_cores & (1u << state->focus_core)) == 0)
        cvmx_debug_set_focus_core(state, core);
}
