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
struct p2p_data {scalar_t__ inv_role; TYPE_1__* cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* send_action_done ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_INVITE_LISTEN ; 
 scalar_t__ P2P_INVITE_ROLE_ACTIVE_GO ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct p2p_data *p2p)
{
	p2p->cfg->send_action_done(p2p->cfg->cb_ctx);
	FUNC2(p2p, P2P_INVITE_LISTEN);
	if (p2p->inv_role == P2P_INVITE_ROLE_ACTIVE_GO) {
		/*
		 * Better remain on operating channel instead of listen channel
		 * when running a group.
		 */
		FUNC0(p2p, "Inviting in active GO role - wait on operating channel");
		FUNC3(p2p, 0, 100000);
		return;
	}
	FUNC1(p2p, 0);
}