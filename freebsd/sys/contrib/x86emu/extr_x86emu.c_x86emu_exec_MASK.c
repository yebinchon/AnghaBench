#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int intr; int intno; scalar_t__ R_CS; scalar_t__ R_IP; } ;
struct x86emu {int /*<<< orphan*/  cur_cycles; TYPE_1__ x86; int /*<<< orphan*/  exec_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_IF ; 
 int INTR_SYNCH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*) ; 

void 
FUNC4(struct x86emu *emu)
{
	emu->x86.intr = 0;

	if (FUNC1(emu->exec_state))
		return;

	for (;;) {
		if (emu->x86.intr) {
			if (((emu->x86.intr & INTR_SYNCH) &&
			    (emu->x86.intno == 0 || emu->x86.intno == 2)) ||
			    !FUNC0(F_IF)) {
				FUNC3(emu);
			}
		}
		if (emu->x86.R_CS == 0 && emu->x86.R_IP == 0)
			return;
		FUNC2(emu);
		++emu->cur_cycles;
	}
}