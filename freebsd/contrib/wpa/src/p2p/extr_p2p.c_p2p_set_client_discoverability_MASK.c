#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct p2p_data {int /*<<< orphan*/  dev_capab; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*) ; 

void FUNC1(struct p2p_data *p2p, int enabled)
{
	if (enabled) {
		FUNC0(p2p, "Client discoverability enabled");
		p2p->dev_capab |= P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY;
	} else {
		FUNC0(p2p, "Client discoverability disabled");
		p2p->dev_capab &= ~P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY;
	}
}