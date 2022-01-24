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
 int /*<<< orphan*/  P2P_SCAN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct p2p_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct p2p_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,char*) ; 
 int /*<<< orphan*/  p2p_scan_timeout ; 

void FUNC4(struct p2p_data *p2p, int status)
{
	if (status != 0) {
		FUNC3(p2p, "Scan request failed");
		/* Do continue find even for the first p2p_find_scan */
		FUNC2(p2p);
	} else {
		FUNC3(p2p, "Running p2p_scan");
		p2p->p2p_scan_running = 1;
		FUNC0(p2p_scan_timeout, p2p, NULL);
		FUNC1(P2P_SCAN_TIMEOUT, 0, p2p_scan_timeout,
				       p2p, NULL);
	}
}