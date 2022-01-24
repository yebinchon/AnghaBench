#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int known_cores; unsigned int core_finished; unsigned int focus_core; scalar_t__ ever_been_in_debug; } ;
typedef  TYPE_1__ cvmx_debug_state_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int CVMX_MAX_CORES ; 
 int FUNC0 () ; 
 TYPE_1__ FUNC1 () ; 
 TYPE_4__* cvmx_debug_globals ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__) ; 
 unsigned int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

void FUNC12(void)
{
    unsigned coreid = FUNC8();
    cvmx_debug_state_t state;

    if (!cvmx_debug_globals) return;
    FUNC2 ("Debug _exit reached!, core %d, cvmx_debug_globals = %p\n", coreid, cvmx_debug_globals);

#ifndef CVMX_BUILD_FOR_LINUX_KERNEL
    FUNC11 (stdout);
    FUNC11 (stderr);
#endif

    FUNC9(&cvmx_debug_globals->lock);
    state = FUNC1();
    state.known_cores ^= (1u << coreid);
    state.core_finished |= (1u <<coreid);
    FUNC7(state);

    /* Tell the user the core has finished. */
    if (state.ever_been_in_debug)
        FUNC3("finished.", coreid);

    /* Notify the debugger if all cores have completed the program */
    if ((FUNC0 () & state.core_finished) == FUNC0 ())
    {
        FUNC2("All cores done!\n");
        if (state.ever_been_in_debug)
            FUNC4("D0");
    }
    if (state.focus_core == coreid && state.known_cores != 0)
    {
        /* Loop through cores looking for someone to handle interrupts.
           Since we already check that known_cores is non zero, this
           should always find a core */
        unsigned newcore;
        for (newcore = 0; newcore < CVMX_MAX_CORES; newcore++)
        {
           if (state.known_cores & (1u<<newcore))
           {
               FUNC2("Routing uart interrupts to Core #%u.\n", newcore);
               FUNC5(&state, newcore);
               FUNC7(state);
               break;
            }
        }
    }
    FUNC10(&cvmx_debug_globals->lock);

    /* If we ever been in the debug, report to it that we have exited the core. */
    if (state.ever_been_in_debug)
        FUNC6();
}