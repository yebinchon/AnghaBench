#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintfptr_t ;
struct trapframe {int dummy; } ;
struct thread {struct trapframe* td_intr_frame; } ;
struct TYPE_3__ {int /*<<< orphan*/  prof_id; } ;
typedef  TYPE_1__ profile_probe_t ;
typedef  int /*<<< orphan*/  hrtime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct thread*) ; 
 scalar_t__ FUNC1 (struct trapframe*) ; 
 scalar_t__ FUNC2 (struct trapframe*) ; 
 int /*<<< orphan*/  cpu_idle ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(profile_probe_t *prof, hrtime_t late)
{
	struct thread *td;
	struct trapframe *frame;
	uintfptr_t pc, upc;

	td = curthread;
	pc = upc = 0;

	/*
	 * td_intr_frame can be unset if this is a catch-up event upon waking up
	 * from idle sleep. This can only happen on a CPU idle thread. Use a
	 * representative arg0 value in this case so that one of the probe
	 * arguments is non-zero.
	 */
	frame = td->td_intr_frame;
	if (frame != NULL) {
		if (FUNC2(frame))
			upc = FUNC1(frame);
		else
			pc = FUNC1(frame);
	} else if (FUNC0(td))
		pc = (uintfptr_t)&cpu_idle;

	FUNC3(prof->prof_id, pc, upc, late, 0, 0);
}