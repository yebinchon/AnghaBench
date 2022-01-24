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
struct p2p_data {scalar_t__ pending_dev_disc_dialog_token; int /*<<< orphan*/  pending_dev_disc_freq; int /*<<< orphan*/  pending_dev_disc_addr; TYPE_1__* cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* send_action_done ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_SC_FAIL_UNABLE_TO_ACCOMMODATE ; 
 int /*<<< orphan*/  P2P_SC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct p2p_data *p2p, int success)
{
	FUNC0(p2p, "GO Discoverability Request TX callback: success=%d",
		success);
	p2p->cfg->send_action_done(p2p->cfg->cb_ctx);

	if (p2p->pending_dev_disc_dialog_token == 0) {
		FUNC0(p2p, "No pending Device Discoverability Request");
		return;
	}

	FUNC1(p2p, p2p->pending_dev_disc_dialog_token,
			       p2p->pending_dev_disc_addr,
			       p2p->pending_dev_disc_freq,
			       success ? P2P_SC_SUCCESS :
			       P2P_SC_FAIL_UNABLE_TO_ACCOMMODATE);

	p2p->pending_dev_disc_dialog_token = 0;
}