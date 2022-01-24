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
typedef  int /*<<< orphan*/  u8 ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct p2p_data *p2p, unsigned int freq)
{
	u8 op_reg_class, op_channel;
	if (FUNC1(freq, &op_reg_class, &op_channel) < 0)
		return 0;
	return FUNC0(&p2p->cfg->channels, op_reg_class,
				     op_channel);
}