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
struct p2p_data {TYPE_1__* invite_peer; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_DEV_WAIT_INV_REQ_ACK ; 
 int /*<<< orphan*/  P2P_INVITE ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct p2p_data *p2p, int success)
{
	FUNC0(p2p, "Invitation Request TX callback: success=%d", success);

	if (p2p->invite_peer == NULL) {
		FUNC0(p2p, "No pending Invite");
		return;
	}

	if (success)
		p2p->invite_peer->flags &= ~P2P_DEV_WAIT_INV_REQ_ACK;

	/*
	 * Use P2P find, if needed, to find the other device from its listen
	 * channel.
	 */
	FUNC1(p2p, P2P_INVITE);
	FUNC2(p2p, 0, success ? 500000 : 100000);
}