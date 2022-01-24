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
struct p2p_data {int state; scalar_t__ pending_channel; scalar_t__ pending_reg_class; TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ channel; scalar_t__ reg_class; } ;

/* Variables and functions */
 int P2P_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct p2p_data *p2p, int new_state)
{
	FUNC0(p2p, "State %s -> %s",
		FUNC1(p2p->state), FUNC1(new_state));
	p2p->state = new_state;

	if (new_state == P2P_IDLE && p2p->pending_channel) {
		FUNC0(p2p, "Apply change in listen channel");
		p2p->cfg->reg_class = p2p->pending_reg_class;
		p2p->cfg->channel = p2p->pending_channel;
		p2p->pending_reg_class = 0;
		p2p->pending_channel = 0;
	}
}