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
struct p2p_data {int state; int search_delay; int in_search_delay; int /*<<< orphan*/  ext_listen_only; int /*<<< orphan*/  pending_action_state; TYPE_1__* cfg; scalar_t__ drv_in_listen; scalar_t__ in_listen; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* stop_listen ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  P2P_CONNECT 140 
#define  P2P_CONNECT_LISTEN 139 
#define  P2P_GO_NEG 138 
#define  P2P_IDLE 137 
#define  P2P_INVITE 136 
#define  P2P_INVITE_LISTEN 135 
#define  P2P_LISTEN_ONLY 134 
#define  P2P_PD_DURING_FIND 133 
 int /*<<< orphan*/  P2P_PENDING_PD ; 
#define  P2P_PROVISIONING 132 
#define  P2P_SD_DURING_FIND 131 
#define  P2P_SEARCH 130 
#define  P2P_WAIT_PEER_CONNECT 129 
#define  P2P_WAIT_PEER_IDLE 128 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(void *eloop_ctx, void *timeout_ctx)
{
	struct p2p_data *p2p = eloop_ctx;

	FUNC0(p2p, "Timeout (state=%s)", FUNC4(p2p->state));

	p2p->in_listen = 0;
	if (p2p->drv_in_listen) {
		FUNC0(p2p, "Driver is still in listen state - stop it");
		p2p->cfg->stop_listen(p2p->cfg->cb_ctx);
	}

	switch (p2p->state) {
	case P2P_IDLE:
		/* Check if we timed out waiting for PD req */
		if (p2p->pending_action_state == P2P_PENDING_PD)
			FUNC10(p2p);
		break;
	case P2P_SEARCH:
		/* Check if we timed out waiting for PD req */
		if (p2p->pending_action_state == P2P_PENDING_PD)
			FUNC10(p2p);
		if (p2p->search_delay && !p2p->in_search_delay) {
			FUNC0(p2p, "Delay search operation by %u ms",
				p2p->search_delay);
			p2p->in_search_delay = 1;
			FUNC3(p2p, p2p->search_delay / 1000,
					(p2p->search_delay % 1000) * 1000);
			break;
		}
		p2p->in_search_delay = 0;
		FUNC1(p2p);
		break;
	case P2P_CONNECT:
		FUNC5(p2p);
		break;
	case P2P_CONNECT_LISTEN:
		FUNC6(p2p);
		break;
	case P2P_GO_NEG:
		break;
	case P2P_LISTEN_ONLY:
		/* Check if we timed out waiting for PD req */
		if (p2p->pending_action_state == P2P_PENDING_PD)
			FUNC10(p2p);

		if (p2p->ext_listen_only) {
			FUNC0(p2p, "Extended Listen Timing - Listen State completed");
			p2p->ext_listen_only = 0;
			FUNC2(p2p, P2P_IDLE);
		}
		break;
	case P2P_WAIT_PEER_CONNECT:
		FUNC12(p2p);
		break;
	case P2P_WAIT_PEER_IDLE:
		FUNC13(p2p);
		break;
	case P2P_SD_DURING_FIND:
		FUNC11(p2p);
		break;
	case P2P_PROVISIONING:
		break;
	case P2P_PD_DURING_FIND:
		FUNC9(p2p);
		break;
	case P2P_INVITE:
		FUNC7(p2p);
		break;
	case P2P_INVITE_LISTEN:
		FUNC8(p2p);
		break;
	}
}