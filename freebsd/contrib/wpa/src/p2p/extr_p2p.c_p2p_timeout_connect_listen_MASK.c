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
struct p2p_data {TYPE_1__* go_neg_peer; scalar_t__ drv_in_listen; } ;
struct TYPE_2__ {int connect_reqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_CONNECT ; 
 int /*<<< orphan*/  P2P_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct p2p_data *p2p)
{
	if (p2p->go_neg_peer) {
		if (p2p->drv_in_listen) {
			FUNC1(p2p, "Driver is still in Listen state; wait for it to complete");
			return;
		}

		if (p2p->go_neg_peer->connect_reqs >= 120) {
			FUNC1(p2p, "Timeout on sending GO Negotiation Request without getting response");
			FUNC2(p2p, -1);
			return;
		}

		FUNC3(p2p, P2P_CONNECT);
		FUNC0(p2p, p2p->go_neg_peer);
	} else
		FUNC3(p2p, P2P_IDLE);
}