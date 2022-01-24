#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct trapframe {int /*<<< orphan*/  tf_spsr; } ;
struct thread {TYPE_1__* td_pcb; } ;
struct TYPE_6__ {int dbg_flags; } ;
struct TYPE_5__ {int dbg_flags; } ;
struct TYPE_4__ {TYPE_3__ pcb_dbg_regs; } ;

/* Variables and functions */
 int DBGMON_ENABLED ; 
 int DBG_MDSCR_KDE ; 
 int DBG_MDSCR_MDE ; 
 int /*<<< orphan*/  DBG_REG_BASE_BCR ; 
 int /*<<< orphan*/  DBG_REG_BASE_BVR ; 
 int /*<<< orphan*/  DBG_REG_BASE_WCR ; 
 int /*<<< orphan*/  DBG_REG_BASE_WVR ; 
 int /*<<< orphan*/  PSR_D ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int dbg_breakpoint_num ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int dbg_watchpoint_num ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__ kernel_monitor ; 
 int /*<<< orphan*/  mdscr_el1 ; 

void
FUNC5(struct thread *thread, struct trapframe *frame)
{
	int i;

	frame->tf_spsr |= PSR_D;
	if ((thread->td_pcb->pcb_dbg_regs.dbg_flags & DBGMON_ENABLED) != 0) {
		/* Install the kernel version of the registers */
		FUNC2(&thread->td_pcb->pcb_dbg_regs);
		frame->tf_spsr &= ~PSR_D;
	} else if ((kernel_monitor.dbg_flags & DBGMON_ENABLED) != 0) {
		/* Disable the user breakpoints until we return to userspace */
		for (i = 0; i < dbg_watchpoint_num; i++) {
			FUNC3(DBG_REG_BASE_WCR, i, 0);
			FUNC3(DBG_REG_BASE_WVR, i, 0);
		}

		for (i = 0; i < dbg_breakpoint_num; ++i) {
			FUNC3(DBG_REG_BASE_BCR, i, 0);
			FUNC3(DBG_REG_BASE_BVR, i, 0);
		}
		FUNC1(mdscr_el1,
		    FUNC0(mdscr_el1) &
		    ~(DBG_MDSCR_MDE | DBG_MDSCR_KDE));
		FUNC4();
	}
}