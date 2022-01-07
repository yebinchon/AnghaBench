
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; TYPE_1__* s; } ;
struct TYPE_3__ {unsigned int coremask; int exit; unsigned int checkin; } ;


 int CVMX_COREMASK_MAX_SYNCS ;
 int assert (int) ;
 unsigned int cvmx_coremask_core (int ) ;
 int cvmx_get_core_num () ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 TYPE_2__ state ;

void cvmx_coremask_barrier_sync(unsigned int coremask)
{
    int i;
    unsigned int target;

    assert(coremask != 0);

    cvmx_spinlock_lock(&state.lock);

    for (i = 0; i < CVMX_COREMASK_MAX_SYNCS; i++) {

        if (state.s[i].coremask == 0) {

            state.s[i].coremask = coremask;
        }

        if (state.s[i].coremask == coremask) {

            target = state.s[i].exit + 1;

            state.s[i].checkin |= cvmx_coremask_core(cvmx_get_core_num());
            if (state.s[i].checkin == coremask) {
                state.s[i].checkin = 0;
                state.s[i].exit = target;
            }
            cvmx_spinlock_unlock(&state.lock);

            while (state.s[i].exit != target)
                ;

            return;
        }
    }


    cvmx_spinlock_unlock(&state.lock);
    assert(0);
}
