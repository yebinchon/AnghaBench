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
struct p2p_data {TYPE_1__* cfg; } ;
struct p2p_channels {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cli_channels; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct p2p_channels const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,char*) ; 

void FUNC3(struct p2p_data *p2p,
			     const struct p2p_channels *chan,
			     const struct p2p_channels *cli_chan)
{
	FUNC2(p2p, "Update channel list");
	FUNC0(&p2p->cfg->channels, chan, sizeof(struct p2p_channels));
	FUNC1(p2p, "channels", &p2p->cfg->channels);
	FUNC0(&p2p->cfg->cli_channels, cli_chan,
		  sizeof(struct p2p_channels));
	FUNC1(p2p, "cli_channels", &p2p->cfg->cli_channels);
}