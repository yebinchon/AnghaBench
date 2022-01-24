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
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_ctx; scalar_t__ (* is_concurrent_session_active ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_WAIT_PEER_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct p2p_data *p2p)
{
	FUNC0(p2p, P2P_WAIT_PEER_IDLE);

	if (p2p->cfg->is_concurrent_session_active &&
	    p2p->cfg->is_concurrent_session_active(p2p->cfg->cb_ctx))
		FUNC1(p2p, 0, 500000);
	else
		FUNC1(p2p, 0, 200000);
}