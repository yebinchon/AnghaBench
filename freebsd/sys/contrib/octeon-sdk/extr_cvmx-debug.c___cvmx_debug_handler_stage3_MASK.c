#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_18__ ;
typedef  struct TYPE_20__   TYPE_15__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_23__ {int ever_been_in_debug; } ;
typedef  TYPE_2__ cvmx_debug_state_t ;
struct TYPE_24__ {int /*<<< orphan*/  u64; } ;
typedef  TYPE_3__ cvmx_debug_register_t ;
struct TYPE_22__ {int /*<<< orphan*/  debug; } ;
struct TYPE_25__ {TYPE_1__ cop0; } ;
typedef  TYPE_4__ cvmx_debug_core_context_t ;
struct TYPE_21__ {int needs_proxy; int /*<<< orphan*/  (* wait_for_resume ) (TYPE_4__ volatile*,TYPE_2__) ;} ;
struct TYPE_20__ {scalar_t__ comm_changed; scalar_t__ comm_type; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ COMM_SIZE ; 
 int /*<<< orphan*/  COP0_DEPC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ __cvmx_debug_mode_exception_occured ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__ volatile*) ; 
 TYPE_18__** cvmx_debug_comms ; 
 TYPE_4__* FUNC2 () ; 
 TYPE_2__ FUNC3 () ; 
 TYPE_15__* cvmx_debug_globals ; 
 int FUNC4 (TYPE_3__*,TYPE_4__ volatile*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__ volatile*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__ volatile*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__ volatile*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__,unsigned int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC11 (char*,long long,int) ; 
 unsigned int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__ volatile*,TYPE_2__) ; 

void FUNC17 (uint64_t lo, uint64_t hi)
{
    volatile cvmx_debug_core_context_t *context;
    int comms_changed = 0;

    FUNC6("Entering debug exception handler\n");
    FUNC6("Debug named block at %p\n", cvmx_debug_globals);
    if (__cvmx_debug_mode_exception_occured)
    {
        uint64_t depc;
        FUNC0(depc, COP0_DEPC);
        FUNC11("Unexpected debug-mode exception occured at 0x%llx, 0x%llx spinning\n", (long long) depc, (long long)(__cvmx_debug_mode_exception_occured));
#ifdef CVMX_BUILD_FOR_LINUX_KERNEL
        panic("Unexpected debug-mode exception occured at 0x%llx, 0x%llx\n", (long long) depc, (long long)(__cvmx_debug_mode_exception_occured));
#endif
        while (1)
            ;
    }

    context = FUNC2();
    FUNC8(context, hi, lo);

    {
        cvmx_debug_state_t state;
        FUNC13(&cvmx_debug_globals->lock);
        state = FUNC3();
        state.ever_been_in_debug = 1;
        FUNC10 (state);
        FUNC14(&cvmx_debug_globals->lock);
    }
    FUNC5(context);

    do
    {
        int needs_proxy;
        comms_changed = 0;
        /* If the communication changes, change it. */
        FUNC13(&cvmx_debug_globals->lock);
        if (cvmx_debug_globals->comm_changed)
        {
            FUNC6("Communication changed: %d\n", (int)cvmx_debug_globals->comm_changed);
            if (cvmx_debug_globals->comm_changed > COMM_SIZE)
            {
                FUNC11("Unknown communication spinning: %lld > %d.\n", (long long)cvmx_debug_globals->comm_changed, (int)(COMM_SIZE));
#ifdef CVMX_BUILD_FOR_LINUX_KERNEL
                panic("Unknown communication.\n");
#endif
                while (1)
                    ;
            }
            cvmx_debug_globals->comm_type = cvmx_debug_globals->comm_changed - 1;
            cvmx_debug_globals->comm_changed = 0;
        }
        FUNC14(&cvmx_debug_globals->lock);
        needs_proxy = cvmx_debug_comms[cvmx_debug_globals->comm_type]->needs_proxy;

        {
            cvmx_debug_register_t debug_reg;
            cvmx_debug_state_t state;
            unsigned core = FUNC12();

            state = FUNC3();
            debug_reg.u64 = context->cop0.debug;
            /* All cores stop on any exception.  See if we want nothing from this and
               it should resume.  This needs to be done for non proxy based debugging
               so that some non active-cores can control the other cores.  */
            if (!FUNC9(state, core, &debug_reg, needs_proxy))
            {
                context->cop0.debug = debug_reg.u64;
                break;
            }
        }

        if (needs_proxy)
        {
            cvmx_debug_register_t debug_reg;
            debug_reg.u64 = context->cop0.debug;
            FUNC6("Starting to proxy\n");
            comms_changed = FUNC4(&debug_reg, context);
            context->cop0.debug = debug_reg.u64;
        }
        else
        {
            FUNC6("Starting to wait for remote host\n");
            cvmx_debug_comms[cvmx_debug_globals->comm_type]->wait_for_resume(context, FUNC3());
        }
    } while (comms_changed);

    FUNC1(context);

    FUNC7(context);
    FUNC6("Exiting debug exception handler\n");
}