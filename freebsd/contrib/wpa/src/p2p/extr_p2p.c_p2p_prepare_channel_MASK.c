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
struct p2p_device {int /*<<< orphan*/  flags; } ;
struct p2p_data {int /*<<< orphan*/  op_channel; int /*<<< orphan*/  op_reg_class; int /*<<< orphan*/  channels; TYPE_1__* cfg; int /*<<< orphan*/  no_go_freq; } ;
struct TYPE_2__ {int /*<<< orphan*/  cli_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_DEV_FORCE_FREQ ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct p2p_data*) ; 
 scalar_t__ FUNC5 (struct p2p_data*,unsigned int,unsigned int,int) ; 

int FUNC6(struct p2p_data *p2p, struct p2p_device *dev,
			unsigned int force_freq, unsigned int pref_freq, int go)
{
	FUNC3(p2p, "Prepare channel - force_freq=%u pref_freq=%u go=%d",
		force_freq, pref_freq, go);
	if (force_freq || pref_freq) {
		if (FUNC5(p2p, force_freq, pref_freq, go) <
		    0)
			return -1;
	} else {
		FUNC4(p2p);
	}
	FUNC0(p2p, "prepared channels", &p2p->channels);
	if (go)
		FUNC1(&p2p->channels, &p2p->no_go_freq);
	else if (!force_freq)
		FUNC2(&p2p->channels,
					   &p2p->cfg->cli_channels);
	FUNC0(p2p, "after go/cli filter/add", &p2p->channels);

	FUNC3(p2p, "Own preference for operation channel: Operating Class %u Channel %u%s",
		p2p->op_reg_class, p2p->op_channel,
		force_freq ? " (forced)" : "");

	if (force_freq)
		dev->flags |= P2P_DEV_FORCE_FREQ;
	else
		dev->flags &= ~P2P_DEV_FORCE_FREQ;

	return 0;
}