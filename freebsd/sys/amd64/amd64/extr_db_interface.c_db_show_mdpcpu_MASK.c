#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pcpu {int /*<<< orphan*/  pc_smp_tlb_done; int /*<<< orphan*/  pc_tss; int /*<<< orphan*/  pc_ldt; int /*<<< orphan*/  pc_gs32p; int /*<<< orphan*/  pc_saved_ucr3; int /*<<< orphan*/  pc_ucr3; int /*<<< orphan*/  pc_kcr3; int /*<<< orphan*/  pc_rsp0; int /*<<< orphan*/  pc_tssp; int /*<<< orphan*/  pc_curpmap; int /*<<< orphan*/  pc_prvspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct pcpu *pc)
{

	FUNC0("self         = %p\n", pc->pc_prvspace);
	FUNC0("curpmap      = %p\n", pc->pc_curpmap);
	FUNC0("tssp         = %p\n", pc->pc_tssp);
	FUNC0("rsp0         = 0x%lx\n", pc->pc_rsp0);
	FUNC0("kcr3         = 0x%lx\n", pc->pc_kcr3);
	FUNC0("ucr3         = 0x%lx\n", pc->pc_ucr3);
	FUNC0("scr3         = 0x%lx\n", pc->pc_saved_ucr3);
	FUNC0("gs32p        = %p\n", pc->pc_gs32p);
	FUNC0("ldt          = %p\n", pc->pc_ldt);
	FUNC0("tss          = %p\n", pc->pc_tss);
	FUNC0("tlb gen      = %u\n", pc->pc_smp_tlb_done);
}