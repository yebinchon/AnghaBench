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
typedef  int /*<<< orphan*/  u8 ;
struct p2p_device {scalar_t__ status; int /*<<< orphan*/  flags; } ;
struct p2p_data {scalar_t__ state; TYPE_1__* go_neg_peer; } ;
struct TYPE_2__ {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_DEV_PEER_WAITING_RESPONSE ; 
 scalar_t__ P2P_SC_FAIL_INFO_CURRENTLY_UNAVAILABLE ; 
 scalar_t__ P2P_SC_SUCCESS ; 
 scalar_t__ P2P_SD_DURING_FIND ; 
 scalar_t__ P2P_SEARCH ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,char*,int) ; 
 struct p2p_device* FUNC2 (struct p2p_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct p2p_data *p2p, int success,
				       const u8 *addr)
{
	FUNC1(p2p, "GO Negotiation Response (failure) TX callback: success=%d", success);
	if (p2p->go_neg_peer && p2p->go_neg_peer->status != P2P_SC_SUCCESS) {
		FUNC3(p2p, p2p->go_neg_peer->status);
		return;
	}

	if (success) {
		struct p2p_device *dev;
		dev = FUNC2(p2p, addr);
		if (dev &&
		    dev->status == P2P_SC_FAIL_INFO_CURRENTLY_UNAVAILABLE)
			dev->flags |= P2P_DEV_PEER_WAITING_RESPONSE;
	}

	if (p2p->state == P2P_SEARCH || p2p->state == P2P_SD_DURING_FIND)
		FUNC0(p2p);
}