#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct p2p_data {TYPE_2__* go_neg_peer; TYPE_1__* cfg; } ;
struct TYPE_4__ {int flags; int connect_reqs; scalar_t__ oob_go_neg_freq; } ;
struct TYPE_3__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* send_action_done ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_CONNECT_LISTEN ; 
 int P2P_DEV_PEER_WAITING_RESPONSE ; 
 int P2P_DEV_WAIT_GO_NEG_CONFIRM ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct p2p_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct p2p_data *p2p)
{
	p2p->cfg->send_action_done(p2p->cfg->cb_ctx);
	if (p2p->go_neg_peer &&
	    (p2p->go_neg_peer->flags & P2P_DEV_WAIT_GO_NEG_CONFIRM)) {
		FUNC1(p2p, "Wait for GO Negotiation Confirm timed out - assume GO Negotiation failed");
		FUNC2(p2p, -1);
		return;
	}
	if (p2p->go_neg_peer &&
	    (p2p->go_neg_peer->flags & P2P_DEV_PEER_WAITING_RESPONSE) &&
	    p2p->go_neg_peer->connect_reqs < 120) {
		FUNC1(p2p, "Peer expected to wait our response - skip listen");
		FUNC0(p2p, p2p->go_neg_peer);
		return;
	}
	if (p2p->go_neg_peer && p2p->go_neg_peer->oob_go_neg_freq > 0) {
		FUNC1(p2p, "Skip connect-listen since GO Neg channel known (OOB)");
		FUNC4(p2p, P2P_CONNECT_LISTEN);
		FUNC5(p2p, 0, 30000);
		return;
	}
	FUNC4(p2p, P2P_CONNECT_LISTEN);
	FUNC3(p2p, 0);
}