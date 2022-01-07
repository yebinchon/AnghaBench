
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int active_cores; } ;
typedef TYPE_1__ cvmx_debug_state_t ;



__attribute__((used)) static int cvmx_debug_active_core(cvmx_debug_state_t state, unsigned core)
{
    return state.active_cores & (1u << core);
}
