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
struct p2p_data {scalar_t__ pending_action_state; scalar_t__ pd_retries; scalar_t__ state; int ext_listen_only; int /*<<< orphan*/  ext_listen_period; TYPE_1__* cfg; int /*<<< orphan*/  ext_listen_interval_usec; int /*<<< orphan*/  ext_listen_interval_sec; scalar_t__ ext_listen_interval; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_ctx; scalar_t__ (* is_p2p_in_progress ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ P2P_IDLE ; 
 scalar_t__ P2P_LISTEN_ONLY ; 
 scalar_t__ P2P_PENDING_PD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (void*,void*),struct p2p_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,char*,...) ; 
 scalar_t__ FUNC2 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *eloop_ctx, void *timeout_ctx)
{
	struct p2p_data *p2p = eloop_ctx;

	if (p2p->ext_listen_interval) {
		/* Schedule next extended listen timeout */
		FUNC0(p2p->ext_listen_interval_sec,
				       p2p->ext_listen_interval_usec,
				       p2p_ext_listen_timeout, p2p, NULL);
	}

	if ((p2p->cfg->is_p2p_in_progress &&
	     p2p->cfg->is_p2p_in_progress(p2p->cfg->cb_ctx)) ||
	    (p2p->pending_action_state == P2P_PENDING_PD &&
	     p2p->pd_retries > 0)) {
		FUNC1(p2p, "Operation in progress - skip Extended Listen timeout (%s)",
			FUNC4(p2p->state));
		return;
	}

	if (p2p->state == P2P_LISTEN_ONLY && p2p->ext_listen_only) {
		/*
		 * This should not really happen, but it looks like the Listen
		 * command may fail is something else (e.g., a scan) was
		 * running at an inconvenient time. As a workaround, allow new
		 * Extended Listen operation to be started.
		 */
		FUNC1(p2p, "Previous Extended Listen operation had not been completed - try again");
		p2p->ext_listen_only = 0;
		FUNC3(p2p, P2P_IDLE);
	}

	if (p2p->state != P2P_IDLE) {
		FUNC1(p2p, "Skip Extended Listen timeout in active state (%s)", FUNC4(p2p->state));
		return;
	}

	FUNC1(p2p, "Extended Listen timeout");
	p2p->ext_listen_only = 1;
	if (FUNC2(p2p, p2p->ext_listen_period) < 0) {
		FUNC1(p2p, "Failed to start Listen state for Extended Listen Timing");
		p2p->ext_listen_only = 0;
	}
}