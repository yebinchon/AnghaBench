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
struct p2p_data {scalar_t__ state; scalar_t__ p2p_scan_running; } ;

/* Variables and functions */
 scalar_t__ P2P_SEARCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct p2p_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,char*) ; 
 scalar_t__ FUNC3 (struct p2p_data*) ; 
 int /*<<< orphan*/  p2p_scan_timeout ; 

void FUNC4(struct p2p_data *p2p)
{
	if (!p2p->p2p_scan_running) {
		FUNC2(p2p, "p2p_scan was not running, but scan results received");
	}
	p2p->p2p_scan_running = 0;
	FUNC0(p2p_scan_timeout, p2p, NULL);

	if (FUNC3(p2p))
		return;
	if (p2p->state == P2P_SEARCH)
		FUNC1(p2p);
}