
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int focus_core; scalar_t__ ever_been_in_debug; } ;
typedef TYPE_1__ cvmx_debug_state_t ;
struct TYPE_7__ {int (* change_core ) (int,int) ;} ;
struct TYPE_6__ {size_t comm_type; } ;


 TYPE_4__** cvmx_debug_comms ;
 TYPE_3__* cvmx_debug_globals ;
 int cvmx_debug_putcorepacket (char*,int) ;
 int stub1 (int,int) ;

__attribute__((used)) static void cvmx_debug_set_focus_core(cvmx_debug_state_t *state, int core)
{
    if (state->ever_been_in_debug)
        cvmx_debug_putcorepacket("taking focus.", core);
    cvmx_debug_comms[cvmx_debug_globals->comm_type]->change_core (state->focus_core, core);
    state->focus_core = core;
}
