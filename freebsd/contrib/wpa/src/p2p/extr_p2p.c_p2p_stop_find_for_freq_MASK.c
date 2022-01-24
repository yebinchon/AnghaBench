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
struct p2p_data {scalar_t__ state; scalar_t__ send_action_in_progress; int /*<<< orphan*/ * invite_peer; int /*<<< orphan*/ * sd_peer; TYPE_2__* go_neg_peer; int /*<<< orphan*/  start_after_scan; scalar_t__ p2ps_seek_count; TYPE_1__* cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* find_stopped ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_AFTER_SCAN_NOTHING ; 
 int /*<<< orphan*/  P2P_DEV_PEER_WAITING_RESPONSE ; 
 int /*<<< orphan*/  P2P_IDLE ; 
 scalar_t__ P2P_SD_DURING_FIND ; 
 scalar_t__ P2P_SEARCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct p2p_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,char*) ; 
 int /*<<< orphan*/  p2p_find_timeout ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct p2p_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct p2p_data *p2p, int freq)
{
	FUNC2(p2p, "Stopping find");
	FUNC0(p2p_find_timeout, p2p, NULL);
	FUNC1(p2p);
	if (p2p->state == P2P_SEARCH || p2p->state == P2P_SD_DURING_FIND)
		p2p->cfg->find_stopped(p2p->cfg->cb_ctx);

	p2p->p2ps_seek_count = 0;

	FUNC4(p2p, P2P_IDLE);
	FUNC3(p2p);
	p2p->start_after_scan = P2P_AFTER_SCAN_NOTHING;
	if (p2p->go_neg_peer)
		p2p->go_neg_peer->flags &= ~P2P_DEV_PEER_WAITING_RESPONSE;
	p2p->go_neg_peer = NULL;
	p2p->sd_peer = NULL;
	p2p->invite_peer = NULL;
	FUNC5(p2p, freq);
	p2p->send_action_in_progress = 0;
}