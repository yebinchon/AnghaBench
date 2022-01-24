#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct unwind_state {int /*<<< orphan*/ * registers; } ;
struct thread {TYPE_2__* td_pcb; } ;
struct stack {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  sf_pc; int /*<<< orphan*/  sf_lr; int /*<<< orphan*/  sf_sp; int /*<<< orphan*/  sf_r11; } ;
struct TYPE_4__ {TYPE_1__ pcb_regs; } ;

/* Variables and functions */
 size_t FP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t LR ; 
 size_t PC ; 
 size_t SP ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct stack*,struct unwind_state*) ; 

void
FUNC4(struct stack *st, struct thread *td)
{
	struct unwind_state state;

	FUNC0(!FUNC2(td), ("stack_save_td: swapped"));
	FUNC0(!FUNC1(td), ("stack_save_td: running"));

	state.registers[FP] = td->td_pcb->pcb_regs.sf_r11;
	state.registers[SP] = td->td_pcb->pcb_regs.sf_sp;
	state.registers[LR] = td->td_pcb->pcb_regs.sf_lr;
	state.registers[PC] = td->td_pcb->pcb_regs.sf_pc;

	FUNC3(st, &state);
}