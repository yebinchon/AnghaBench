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
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  desave; int /*<<< orphan*/  depc; int /*<<< orphan*/ * perfctrl; int /*<<< orphan*/ * perfval; int /*<<< orphan*/  multicoredebug; int /*<<< orphan*/  debug; int /*<<< orphan*/  cause; int /*<<< orphan*/  status; int /*<<< orphan*/  pagemask; int /*<<< orphan*/  entryhi; int /*<<< orphan*/ * entrylo; int /*<<< orphan*/  index; } ;
struct TYPE_7__ {int /*<<< orphan*/ * control; int /*<<< orphan*/ * asid; int /*<<< orphan*/ * address_mask; int /*<<< orphan*/ * address; int /*<<< orphan*/  status; } ;
struct TYPE_6__ {int /*<<< orphan*/ * control; int /*<<< orphan*/ * asid; int /*<<< orphan*/ * address_mask; int /*<<< orphan*/ * address; int /*<<< orphan*/  status; } ;
struct TYPE_9__ {int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; TYPE_3__ cop0; TYPE_2__ hw_ibp; TYPE_1__ hw_dbp; scalar_t__ regs; } ;
typedef  TYPE_4__ cvmx_debug_core_context_t ;

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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  CVMX_DEBUG_HW_DATA_BREAKPOINT_STATUS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_STATUS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __cvmx_debug_save_regs_area ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(volatile cvmx_debug_core_context_t *context)
{
    uint64_t hi, lo;
    int i;
    FUNC9 (__cvmx_debug_save_regs_area, (char *) context->regs, sizeof(context->regs));
    /* We don't change the TLB so no need to restore it.  */
    FUNC10(CVMX_DEBUG_HW_DATA_BREAKPOINT_STATUS, context->hw_dbp.status);
    for (i = 0; i < 4; i++)
    {
        FUNC10(FUNC0(i), context->hw_dbp.address[i]);
        FUNC10(FUNC1(i), context->hw_dbp.address_mask[i]);
        FUNC10(FUNC2(i), context->hw_dbp.asid[i]);
        FUNC10(FUNC3(i), context->hw_dbp.control[i]);
    }
    FUNC10(CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_STATUS, context->hw_ibp.status);
    for (i = 0; i < 4; i++)
    {
        FUNC10(FUNC4(i), context->hw_ibp.address[i]);
        FUNC10(FUNC5(i), context->hw_ibp.address_mask[i]);
        FUNC10(FUNC6(i), context->hw_ibp.asid[i]);
        FUNC10(FUNC7(i), context->hw_ibp.control[i]);
    }
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
    FUNC8(context->cop0.depc, COP0_DEPC);
    FUNC8(context->cop0.desave, COP0_DESAVE);
    lo = context->lo;
    hi = context->hi;
    asm("mtlo %0" :: "r"(lo));
    asm("mthi %0" :: "r"(hi));
}