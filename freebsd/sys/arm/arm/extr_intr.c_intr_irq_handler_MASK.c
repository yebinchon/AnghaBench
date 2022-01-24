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
struct trapframe {int dummy; } ;
struct intr_event {int dummy; } ;
struct TYPE_3__ {int td_pflags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PMC_FN_USER_CALLCHAIN ; 
 int TDP_CALLCHAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  curthread ; 
 scalar_t__ FUNC4 (struct intr_event*,struct trapframe*) ; 
 struct intr_event** intr_events ; 
 int /*<<< orphan*/ * intrcnt ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,struct trapframe*) ; 
 int /*<<< orphan*/  v_intr ; 

void
FUNC6(struct trapframe *frame)
{
	struct intr_event *event;
	int i;

	FUNC1(v_intr);
	i = -1;
	while ((i = FUNC2(i)) != -1) {
		intrcnt[i]++;
		event = intr_events[i];
		if (FUNC4(event, frame) != 0) {
			/* XXX: Log stray IRQs */
			FUNC3(i);
		}
	}
#ifdef HWPMC_HOOKS
	if (pmc_hook && (PCPU_GET(curthread)->td_pflags & TDP_CALLCHAIN))
		pmc_hook(PCPU_GET(curthread), PMC_FN_USER_CALLCHAIN, frame);
#endif
}