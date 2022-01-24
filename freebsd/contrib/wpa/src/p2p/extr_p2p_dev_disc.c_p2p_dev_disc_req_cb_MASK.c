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
struct p2p_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct p2p_data *p2p, int success)
{
	FUNC0(p2p, "Device Discoverability Request TX callback: success=%d",
		success);

	if (!success) {
		/*
		 * Use P2P find, if needed, to find the other device or to
		 * retry device discoverability.
		 */
		FUNC1(p2p, P2P_CONNECT);
		FUNC2(p2p, 0, 100000);
		return;
	}

	FUNC0(p2p, "GO acknowledged Device Discoverability Request - wait for response");
	/*
	 * TODO: is the remain-on-channel from Action frame TX long enough for
	 * most cases or should we try to increase its duration and/or start
	 * another remain-on-channel if needed once the previous one expires?
	 */
}