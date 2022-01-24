#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cvmx_spinlock_t ;
struct TYPE_7__ {unsigned int known_cores; unsigned int core_finished; int focus_core; unsigned int active_cores; int focus_switch; int step_isr; } ;
typedef  TYPE_1__ cvmx_debug_state_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* install_break_handler ) () ;int /*<<< orphan*/  (* init ) () ;} ;
typedef  TYPE_2__ cvmx_debug_comm_t ;
struct TYPE_9__ {size_t comm_type; int init_complete; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CVMX_MAX_CORES ; 
 int /*<<< orphan*/  CVMX_SYNCW ; 
 int /*<<< orphan*/ ** __cvmx_debug_stack_top_all ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_2__** cvmx_debug_comms ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ FUNC5 () ; 
 TYPE_4__* cvmx_debug_globals ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/ ** cvmx_debug_stack_all ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 

void FUNC17(void)
{
    cvmx_debug_state_t state;
    int core;
    const cvmx_debug_comm_t *comm;
    cvmx_spinlock_t *lock;
    unsigned int coremask = FUNC3();

    if (!FUNC4())
        return;

    FUNC7();

#ifndef CVMX_BUILD_FOR_LINUX_KERNEL
    // Put a barrier until all cores have got to this point.
    FUNC0(coremask);
#endif
    FUNC6();


    comm = cvmx_debug_comms[cvmx_debug_globals->comm_type];
    lock = &cvmx_debug_globals->lock;

    core = FUNC12();
#ifdef CVMX_BUILD_FOR_LINUX_KERNEL
    /*  Install the debugger handler on the cores. */
    {
        int core1 = 0;
        for (core1 = 0; core1 < CVMX_MAX_CORES; core1++)
        {
            if ((1u<<core1) & coremask)
                cvmx_debug_install_handler(core1);
        }
    }
#else
    FUNC8(core);
#endif

    if (comm->init)
        comm->init();

    {
        FUNC13(lock);
        state = FUNC5();
#ifdef CVMX_BUILD_FOR_LINUX_KERNEL
        state.known_cores |= coremask;
        state.core_finished &= ~coremask;
#else
        state.known_cores |= (1u << core);
        state.core_finished &= ~(1u << core);
#endif
        FUNC11(state);
        FUNC14(lock);
    }

#ifndef CVMX_BUILD_FOR_LINUX_KERNEL
    // Put a barrier until all cores have got to this point.
    FUNC0(coremask);

    if (FUNC1(coremask))
#endif
    {
        FUNC9("cvmx_debug_init core: %d\n", core);
        state = FUNC5();
        state.focus_core = core;
        state.active_cores = state.known_cores;
        state.focus_switch = 1;
        state.step_isr = 1;
        FUNC9("Known cores at init: 0x%x\n", (int)state.known_cores);
        FUNC11(state);

        /* Initialize __cvmx_debug_stack_top_all. */
#ifdef CVMX_BUILD_FOR_LINUX_KERNEL
        {
            int i;
            for (i = 0; i < CVMX_MAX_CORES; i++)
                __cvmx_debug_stack_top_all[i] = &cvmx_debug_stack_all[i][8*1024];
        }
#endif
        cvmx_debug_globals->init_complete = 1;
        CVMX_SYNCW;
    }
    while (!cvmx_debug_globals->init_complete)
    {
        /* Spin waiting for init to complete */
    }

    if (FUNC2())
        FUNC10();

    /*  Install the break handler after might tripper the debugger exception. */
#ifndef CVMX_BUILD_FOR_LINUX_KERNEL
    if (FUNC1(coremask))
#endif
    {
        if (comm->install_break_handler)
            comm->install_break_handler();
    }
}