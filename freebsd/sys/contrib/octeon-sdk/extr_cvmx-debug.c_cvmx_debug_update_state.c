
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_debug_state_t ;
struct TYPE_2__ {int state; } ;


 TYPE_1__* cvmx_debug_globals ;
 int cvmx_debug_memcpy_align (int ,int *,int) ;

__attribute__((used)) static inline void cvmx_debug_update_state(cvmx_debug_state_t state)
{
    cvmx_debug_memcpy_align(cvmx_debug_globals->state, &state, sizeof(cvmx_debug_state_t));
}
