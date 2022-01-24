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
struct p2p_data {int /*<<< orphan*/  invite_dev_pw_id; int /*<<< orphan*/  invite_go_dev_addr; int /*<<< orphan*/ * invite_peer; TYPE_1__* cfg; scalar_t__ pending_listen_freq; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* stop_listen ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *eloop_ctx, void *timeout_ctx)
{
	struct p2p_data *p2p = eloop_ctx;
	if (p2p->invite_peer == NULL)
		return;
	if (p2p->pending_listen_freq) {
		FUNC0(p2p, "Clear pending_listen_freq for p2p_invite_start");
		p2p->pending_listen_freq = 0;
	}
	p2p->cfg->stop_listen(p2p->cfg->cb_ctx);
	FUNC1(p2p, p2p->invite_peer, p2p->invite_go_dev_addr,
			p2p->invite_dev_pw_id);
}