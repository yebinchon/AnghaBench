
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__* state; } ;


 TYPE_1__* cvmx_debug_globals ;
 int cvmx_debug_state_t ;
 int handler_cores ;
 int offsetof (int ,int ) ;
 int step_all ;

__attribute__((used)) static void cvmx_debug_sync_up_cores(void)
{


    do {
      asm("": : : "memory");
    } while (cvmx_debug_globals->state[offsetof(cvmx_debug_state_t, step_all)/sizeof(uint32_t)]
      && cvmx_debug_globals->state[offsetof(cvmx_debug_state_t, handler_cores)/sizeof(uint32_t)] != 0);
}
