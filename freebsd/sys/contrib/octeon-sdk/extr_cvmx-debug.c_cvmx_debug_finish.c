
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int known_cores; unsigned int core_finished; unsigned int focus_core; scalar_t__ ever_been_in_debug; } ;
typedef TYPE_1__ cvmx_debug_state_t ;
struct TYPE_7__ {int lock; } ;


 unsigned int CVMX_MAX_CORES ;
 int cvmx_debug_core_mask () ;
 TYPE_1__ cvmx_debug_get_state () ;
 TYPE_4__* cvmx_debug_globals ;
 int cvmx_debug_printf (char*,...) ;
 int cvmx_debug_putcorepacket (char*,unsigned int) ;
 int cvmx_debug_putpacket_noformat (char*) ;
 int cvmx_debug_set_focus_core (TYPE_1__*,unsigned int) ;
 int cvmx_debug_trigger_exception () ;
 int cvmx_debug_update_state (TYPE_1__) ;
 unsigned int cvmx_get_core_num () ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 int fflush (int ) ;
 int stderr ;
 int stdout ;

void cvmx_debug_finish(void)
{
    unsigned coreid = cvmx_get_core_num();
    cvmx_debug_state_t state;

    if (!cvmx_debug_globals) return;
    cvmx_debug_printf ("Debug _exit reached!, core %d, cvmx_debug_globals = %p\n", coreid, cvmx_debug_globals);


    fflush (stdout);
    fflush (stderr);


    cvmx_spinlock_lock(&cvmx_debug_globals->lock);
    state = cvmx_debug_get_state();
    state.known_cores ^= (1u << coreid);
    state.core_finished |= (1u <<coreid);
    cvmx_debug_update_state(state);


    if (state.ever_been_in_debug)
        cvmx_debug_putcorepacket("finished.", coreid);


    if ((cvmx_debug_core_mask () & state.core_finished) == cvmx_debug_core_mask ())
    {
        cvmx_debug_printf("All cores done!\n");
        if (state.ever_been_in_debug)
            cvmx_debug_putpacket_noformat("D0");
    }
    if (state.focus_core == coreid && state.known_cores != 0)
    {



        unsigned newcore;
        for (newcore = 0; newcore < CVMX_MAX_CORES; newcore++)
        {
           if (state.known_cores & (1u<<newcore))
           {
               cvmx_debug_printf("Routing uart interrupts to Core #%u.\n", newcore);
               cvmx_debug_set_focus_core(&state, newcore);
               cvmx_debug_update_state(state);
               break;
            }
        }
    }
    cvmx_spinlock_unlock(&cvmx_debug_globals->lock);


    if (state.ever_been_in_debug)
        cvmx_debug_trigger_exception();
}
