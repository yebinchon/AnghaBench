
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int core_mask; } ;
struct TYPE_4__ {int lock; TYPE_1__ sysinfo; } ;


 int cvmx_get_core_num () ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 TYPE_2__ state ;

void cvmx_sysinfo_add_self_to_core_mask(void)
{
    int core = cvmx_get_core_num();
    uint32_t core_mask = 1 << core;

    cvmx_spinlock_lock(&state.lock);
    state.sysinfo.core_mask = state.sysinfo.core_mask | core_mask;
    cvmx_spinlock_unlock(&state.lock);
}
