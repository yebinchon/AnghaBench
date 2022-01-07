
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int cvmx_spinlock_t ;
struct TYPE_7__ {unsigned int known_cores; unsigned int core_finished; int focus_core; unsigned int active_cores; int focus_switch; int step_isr; } ;
typedef TYPE_1__ cvmx_debug_state_t ;
struct TYPE_8__ {int (* install_break_handler ) () ;int (* init ) () ;} ;
typedef TYPE_2__ cvmx_debug_comm_t ;
struct TYPE_9__ {size_t comm_type; int init_complete; int lock; } ;


 int CVMX_MAX_CORES ;
 int CVMX_SYNCW ;
 int ** __cvmx_debug_stack_top_all ;
 int cvmx_coremask_barrier_sync (unsigned int) ;
 scalar_t__ cvmx_coremask_first_core (unsigned int) ;
 scalar_t__ cvmx_debug_booted () ;
 TYPE_2__** cvmx_debug_comms ;
 unsigned int cvmx_debug_core_mask () ;
 int cvmx_debug_enabled () ;
 TYPE_1__ cvmx_debug_get_state () ;
 TYPE_4__* cvmx_debug_globals ;
 int cvmx_debug_globals_check_version () ;
 int cvmx_debug_init_globals () ;
 int cvmx_debug_install_handler (int) ;
 int cvmx_debug_printf (char*,int) ;
 int ** cvmx_debug_stack_all ;
 int cvmx_debug_trigger_exception () ;
 int cvmx_debug_update_state (TYPE_1__) ;
 int cvmx_get_core_num () ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 int stub1 () ;
 int stub2 () ;

void cvmx_debug_init(void)
{
    cvmx_debug_state_t state;
    int core;
    const cvmx_debug_comm_t *comm;
    cvmx_spinlock_t *lock;
    unsigned int coremask = cvmx_debug_core_mask();

    if (!cvmx_debug_enabled())
        return;

    cvmx_debug_init_globals();



    cvmx_coremask_barrier_sync(coremask);

    cvmx_debug_globals_check_version();


    comm = cvmx_debug_comms[cvmx_debug_globals->comm_type];
    lock = &cvmx_debug_globals->lock;

    core = cvmx_get_core_num();
    cvmx_debug_install_handler(core);


    if (comm->init)
        comm->init();

    {
        cvmx_spinlock_lock(lock);
        state = cvmx_debug_get_state();




        state.known_cores |= (1u << core);
        state.core_finished &= ~(1u << core);

        cvmx_debug_update_state(state);
        cvmx_spinlock_unlock(lock);
    }



    cvmx_coremask_barrier_sync(coremask);

    if (cvmx_coremask_first_core(coremask))

    {
        cvmx_debug_printf("cvmx_debug_init core: %d\n", core);
        state = cvmx_debug_get_state();
        state.focus_core = core;
        state.active_cores = state.known_cores;
        state.focus_switch = 1;
        state.step_isr = 1;
        cvmx_debug_printf("Known cores at init: 0x%x\n", (int)state.known_cores);
        cvmx_debug_update_state(state);
        cvmx_debug_globals->init_complete = 1;
        CVMX_SYNCW;
    }
    while (!cvmx_debug_globals->init_complete)
    {

    }

    if (cvmx_debug_booted())
        cvmx_debug_trigger_exception();



    if (cvmx_coremask_first_core(coremask))

    {
        if (comm->install_break_handler)
            comm->install_break_handler();
    }
}
