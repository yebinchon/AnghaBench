#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct p2p_data {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_IDLE ; 
 scalar_t__ P2P_LISTEN_ONLY ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int /*<<< orphan*/ ) ; 

void FUNC3(struct p2p_data *p2p)
{
	if (p2p->state != P2P_LISTEN_ONLY) {
		FUNC0(p2p, "Skip stop_listen since not in listen_only state.");
		return;
	}

	FUNC2(p2p, 0);
	FUNC1(p2p, P2P_IDLE);
}