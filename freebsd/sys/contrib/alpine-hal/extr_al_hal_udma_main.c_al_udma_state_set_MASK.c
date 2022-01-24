#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct al_udma {int state; scalar_t__ type; TYPE_5__* udma_regs; int /*<<< orphan*/  name; } ;
typedef  enum al_udma_state { ____Placeholder_al_udma_state } al_udma_state ;
struct TYPE_8__ {int /*<<< orphan*/  change_state; } ;
struct TYPE_9__ {TYPE_3__ s2m; } ;
struct TYPE_6__ {int /*<<< orphan*/  change_state; } ;
struct TYPE_7__ {TYPE_1__ m2s; } ;
struct TYPE_10__ {TYPE_4__ s2m; TYPE_2__ m2s; } ;

/* Variables and functions */
 int EINVAL ; 
#define  UDMA_ABORT 130 
#define  UDMA_DISABLE 129 
 scalar_t__ UDMA_M2S_CHANGE_STATE_ABORT ; 
 scalar_t__ UDMA_M2S_CHANGE_STATE_DIS ; 
 scalar_t__ UDMA_M2S_CHANGE_STATE_NORMAL ; 
#define  UDMA_NORMAL 128 
 scalar_t__ UDMA_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * al_udma_states_name ; 

int FUNC4(struct al_udma *udma, enum al_udma_state state)
{
	uint32_t reg;

	FUNC0(udma != NULL);
	if (state == udma->state)
		FUNC1("udma [%s]: requested state identical to "
			"current state (%d)\n", udma->name, state);

	FUNC1("udma [%s]: change state from (%s) to (%s)\n",
		 udma->name, al_udma_states_name[udma->state],
		 al_udma_states_name[state]);

	reg = 0;
	switch (state) {
	case UDMA_DISABLE:
		reg |= UDMA_M2S_CHANGE_STATE_DIS;
		break;
	case UDMA_NORMAL:
		reg |= UDMA_M2S_CHANGE_STATE_NORMAL;
		break;
	case UDMA_ABORT:
		reg |= UDMA_M2S_CHANGE_STATE_ABORT;
		break;
	default:
		FUNC2("udma: invalid state (%d)\n", state);
		return -EINVAL;
	}

	if (udma->type == UDMA_TX)
		FUNC3(&udma->udma_regs->m2s.m2s.change_state, reg);
	else
		FUNC3(&udma->udma_regs->s2m.s2m.change_state, reg);

	udma->state = state;
	return 0;
}