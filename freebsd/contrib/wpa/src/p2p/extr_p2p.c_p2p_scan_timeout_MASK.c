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
struct p2p_data {int p2p_scan_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*) ; 

__attribute__((used)) static void FUNC2(void *eloop_ctx, void *timeout_ctx)
{
	struct p2p_data *p2p = eloop_ctx;
	int running;
	FUNC0(p2p, "p2p_scan timeout (running=%d)", p2p->p2p_scan_running);
	running = p2p->p2p_scan_running;
	/* Make sure we recover from missed scan results callback */
	p2p->p2p_scan_running = 0;

	if (running)
		FUNC1(p2p);
}