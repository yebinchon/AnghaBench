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
typedef  int uint64_t ;
struct vm {int dummy; } ;
struct vhpet_callout_arg {int timer_num; struct vhpet* vhpet; } ;
struct vhpet {TYPE_1__* timer; int /*<<< orphan*/  freq_sbt; int /*<<< orphan*/  mtx; struct vm* vm; } ;
struct bintime {int dummy; } ;
struct TYPE_2__ {int cap_config; int compval; struct vhpet_callout_arg arg; int /*<<< orphan*/  callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bintime*) ; 
 int /*<<< orphan*/  HPET_FREQ ; 
 int HPET_TCAP_FSB_INT_DEL ; 
 int HPET_TCAP_PER_INT ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_VHPET ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int VHPET_NUM_TIMERS ; 
 int /*<<< orphan*/  FUNC1 (struct bintime) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct vhpet* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vm*) ; 

struct vhpet *
FUNC6(struct vm *vm)
{
	int i, pincount;
	struct vhpet *vhpet;
	uint64_t allowed_irqs;
	struct vhpet_callout_arg *arg;
	struct bintime bt;

	vhpet = FUNC3(sizeof(struct vhpet), M_VHPET, M_WAITOK | M_ZERO);
        vhpet->vm = vm;
	FUNC4(&vhpet->mtx, "vhpet lock", NULL, MTX_DEF);

	FUNC0(HPET_FREQ, &bt);
	vhpet->freq_sbt = FUNC1(bt);

	pincount = FUNC5(vm);
	if (pincount >= 32)
		allowed_irqs = 0xff000000;	/* irqs 24-31 */
	else if (pincount >= 20)
		allowed_irqs = 0xf << (pincount - 4);	/* 4 upper irqs */
	else
		allowed_irqs = 0;

	/*
	 * Initialize HPET timer hardware state.
	 */
	for (i = 0; i < VHPET_NUM_TIMERS; i++) {
		vhpet->timer[i].cap_config = allowed_irqs << 32;
		vhpet->timer[i].cap_config |= HPET_TCAP_PER_INT;
		vhpet->timer[i].cap_config |= HPET_TCAP_FSB_INT_DEL;

		vhpet->timer[i].compval = 0xffffffff;
		FUNC2(&vhpet->timer[i].callout, 1);

		arg = &vhpet->timer[i].arg;
		arg->vhpet = vhpet;
		arg->timer_num = i;
	}

	return (vhpet);
}