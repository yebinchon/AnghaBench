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
struct p2p_data {TYPE_2__* go_neg_peer; TYPE_1__* cfg; scalar_t__ pending_listen_freq; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct TYPE_3__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* stop_listen ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_SC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *eloop_ctx, void *timeout_ctx)
{
	struct p2p_data *p2p = eloop_ctx;
	if (p2p->go_neg_peer == NULL)
		return;
	if (p2p->pending_listen_freq) {
		FUNC1(p2p, "Clear pending_listen_freq for p2p_go_neg_start");
		p2p->pending_listen_freq = 0;
	}
	p2p->cfg->stop_listen(p2p->cfg->cb_ctx);
	p2p->go_neg_peer->status = P2P_SC_SUCCESS;
	/*
	 * Set new timeout to make sure a previously set one does not expire
	 * too quickly while waiting for the GO Negotiation to complete.
	 */
	FUNC2(p2p, 0, 500000);
	FUNC0(p2p, p2p->go_neg_peer);
}