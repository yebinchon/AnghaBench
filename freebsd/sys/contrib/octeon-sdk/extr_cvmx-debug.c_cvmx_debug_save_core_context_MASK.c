#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct TYPE_10__ {void** control; void** asid; void** address_mask; void** address; void* status; } ;
struct TYPE_9__ {void** control; void** asid; void** address_mask; void** address; void* status; } ;
struct TYPE_8__ {int /*<<< orphan*/  desave; int /*<<< orphan*/  depc; int /*<<< orphan*/ * perfctrl; int /*<<< orphan*/ * perfval; int /*<<< orphan*/  multicoredebug; int /*<<< orphan*/  debug; int /*<<< orphan*/  cause; int /*<<< orphan*/  status; int /*<<< orphan*/  pagemask; int /*<<< orphan*/  entryhi; int /*<<< orphan*/ * entrylo; int /*<<< orphan*/  index; } ;
struct TYPE_12__ {TYPE_4__* tlbs; TYPE_3__ hw_dbp; TYPE_2__ hw_ibp; TYPE_1__ cop0; void* hi; void* lo; scalar_t__ regs; } ;
typedef  TYPE_5__ cvmx_debug_core_context_t ;
struct TYPE_13__ {unsigned int tlb_entries; } ;
struct TYPE_11__ {int /*<<< orphan*/  pagemask; int /*<<< orphan*/  entryhi; int /*<<< orphan*/ * entrylo; } ;

/* Variables and functions */
 int /*<<< orphan*/  COP0_CAUSE ; 
 int /*<<< orphan*/  COP0_DEBUG ; 
 int /*<<< orphan*/  COP0_DEPC ; 
 int /*<<< orphan*/  COP0_DESAVE ; 
 int /*<<< orphan*/  COP0_ENTRYHI ; 
 int /*<<< orphan*/  COP0_ENTRYLO0 ; 
 int /*<<< orphan*/  COP0_ENTRYLO1 ; 
 int /*<<< orphan*/  COP0_INDEX ; 
 int /*<<< orphan*/  COP0_MULTICOREDEBUG ; 
 int /*<<< orphan*/  COP0_PAGEMASK ; 
 int /*<<< orphan*/  COP0_PERFCONTROL0 ; 
 int /*<<< orphan*/  COP0_PERFCONTROL1 ; 
 int /*<<< orphan*/  COP0_PERFVALUE0 ; 
 int /*<<< orphan*/  COP0_PERFVALUE1 ; 
 int /*<<< orphan*/  COP0_STATUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  CVMX_DEBUG_HW_DATA_BREAKPOINT_STATUS ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_STATUS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_SYNCW ; 
 int /*<<< orphan*/  __cvmx_debug_save_regs_area ; 
 TYPE_7__* cvmx_debug_globals ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(volatile cvmx_debug_core_context_t *context, uint64_t hi, uint64_t lo)
{
    unsigned i;
    FUNC10 ((char *) context->regs, __cvmx_debug_save_regs_area, sizeof(context->regs));
    context->lo = lo;
    context->hi = hi;
    FUNC8(context->cop0.index, COP0_INDEX);
    FUNC8(context->cop0.entrylo[0], COP0_ENTRYLO0);
    FUNC8(context->cop0.entrylo[1], COP0_ENTRYLO1);
    FUNC8(context->cop0.entryhi, COP0_ENTRYHI);
    FUNC8(context->cop0.pagemask, COP0_PAGEMASK);
    FUNC8(context->cop0.status, COP0_STATUS);
    FUNC8(context->cop0.cause, COP0_CAUSE);
    FUNC8(context->cop0.debug, COP0_DEBUG);
    FUNC8(context->cop0.multicoredebug, COP0_MULTICOREDEBUG);
    FUNC8(context->cop0.perfval[0], COP0_PERFVALUE0);
    FUNC8(context->cop0.perfval[1], COP0_PERFVALUE1);
    FUNC8(context->cop0.perfctrl[0], COP0_PERFCONTROL0);
    FUNC8(context->cop0.perfctrl[1], COP0_PERFCONTROL1);
    /* Save DEPC and DESAVE since debug-mode exceptions (see
       debug_probe_{load,store}) can clobber these.  */
    FUNC8(context->cop0.depc, COP0_DEPC);
    FUNC8(context->cop0.desave, COP0_DESAVE);

    context->hw_ibp.status = FUNC11(CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_STATUS);
    for (i = 0; i < 4; i++)
    {
        context->hw_ibp.address[i] = FUNC11(FUNC4(i));
        context->hw_ibp.address_mask[i] = FUNC11(FUNC5(i));
        context->hw_ibp.asid[i] = FUNC11(FUNC6(i));
        context->hw_ibp.control[i] = FUNC11(FUNC7(i));
    }

    context->hw_dbp.status = FUNC11(CVMX_DEBUG_HW_DATA_BREAKPOINT_STATUS);
    for (i = 0; i < 4; i++)
    {
        context->hw_dbp.address[i] = FUNC11(FUNC0(i));
        context->hw_dbp.address_mask[i] = FUNC11(FUNC1(i));
        context->hw_dbp.asid[i] = FUNC11(FUNC2(i));
        context->hw_dbp.control[i] = FUNC11(FUNC3(i));
    }

    for (i = 0; i < cvmx_debug_globals->tlb_entries; i++)
    {
        FUNC9(i, COP0_INDEX);
        asm volatile ("tlbr");
        FUNC8(context->tlbs[i].entrylo[0], COP0_ENTRYLO0);
        FUNC8(context->tlbs[i].entrylo[1], COP0_ENTRYLO1);
        FUNC8(context->tlbs[i].entryhi, COP0_ENTRYHI);
        FUNC8(context->tlbs[i].pagemask, COP0_PAGEMASK);
    }
    CVMX_SYNCW;
}