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
struct p2p_data {int drv_in_listen; TYPE_1__* cfg; scalar_t__ in_listen; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* stop_listen ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct p2p_data *p2p, int freq)
{
	if (freq > 0 && p2p->drv_in_listen == freq && p2p->in_listen) {
		FUNC1(p2p, "Skip stop_listen since we are on correct channel for response");
		return;
	}
	if (p2p->in_listen) {
		p2p->in_listen = 0;
		FUNC0(p2p);
	}
	if (p2p->drv_in_listen) {
		/*
		 * The driver may not deliver callback to p2p_listen_end()
		 * when the operation gets canceled, so clear the internal
		 * variable that is tracking driver state.
		 */
		FUNC1(p2p, "Clear drv_in_listen (%d)", p2p->drv_in_listen);
		p2p->drv_in_listen = 0;
	}
	p2p->cfg->stop_listen(p2p->cfg->cb_ctx);
}