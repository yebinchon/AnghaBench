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
typedef  void* u8 ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int cfg_op_channel; void* op_channel; void* op_reg_class; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,char*,void*,void*) ; 

int FUNC2(struct p2p_data *p2p, u8 op_reg_class, u8 op_channel,
			 int cfg_op_channel)
{
	if (FUNC0(op_reg_class, op_channel) < 0)
		return -1;

	FUNC1(p2p, "Set Operating channel: reg_class %u channel %u",
		op_reg_class, op_channel);
	p2p->cfg->op_reg_class = op_reg_class;
	p2p->cfg->op_channel = op_channel;
	p2p->cfg->cfg_op_channel = cfg_op_channel;
	return 0;
}