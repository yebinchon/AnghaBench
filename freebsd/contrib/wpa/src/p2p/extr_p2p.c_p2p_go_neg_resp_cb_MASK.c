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
struct p2p_data {scalar_t__ state; int /*<<< orphan*/  go_neg_peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_CONNECT ; 
 scalar_t__ P2P_PROVISIONING ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct p2p_data *p2p, int success)
{
	FUNC0(p2p, "GO Negotiation Response TX callback: success=%d",
		success);
	if (!p2p->go_neg_peer && p2p->state == P2P_PROVISIONING) {
		FUNC0(p2p, "Ignore TX callback event - GO Negotiation is not running anymore");
		return;
	}
	FUNC1(p2p, P2P_CONNECT);
	FUNC2(p2p, 0, 500000);
}