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
struct vm {int dummy; } ;
struct vatpit_callout_arg {int channel_num; struct vatpit* vatpit; } ;
struct vatpit {TYPE_1__* channel; int /*<<< orphan*/  freq_bt; int /*<<< orphan*/  mtx; struct vm* vm; } ;
struct TYPE_2__ {struct vatpit_callout_arg callout_arg; int /*<<< orphan*/  callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  M_VATPIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PIT_8254_FREQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct vatpit* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct vatpit *
FUNC4(struct vm *vm)
{
	struct vatpit *vatpit;
	struct vatpit_callout_arg *arg;
	int i;

	vatpit = FUNC2(sizeof(struct vatpit), M_VATPIT, M_WAITOK | M_ZERO);
	vatpit->vm = vm;

	FUNC3(&vatpit->mtx, "vatpit lock", NULL, MTX_SPIN);

	FUNC0(PIT_8254_FREQ, &vatpit->freq_bt);

	for (i = 0; i < 3; i++) {
		FUNC1(&vatpit->channel[i].callout, 1);
		arg = &vatpit->channel[i].callout_arg;
		arg->vatpit = vatpit;
		arg->channel_num = i;
	}

	return (vatpit);
}