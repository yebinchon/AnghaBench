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
struct p2p_data {scalar_t__ state; int search_delay; scalar_t__ pending_listen_freq; scalar_t__ p2p_scan_running; TYPE_1__* go_neg_peer; scalar_t__ in_listen; scalar_t__ drv_in_listen; } ;
struct TYPE_2__ {int connect_reqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_CONNECT ; 
 scalar_t__ P2P_CONNECT_LISTEN ; 
 scalar_t__ P2P_SEARCH ; 
 scalar_t__ P2P_WAIT_PEER_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct p2p_data*,int,int) ; 

int FUNC6(struct p2p_data *p2p, unsigned int freq)
{
	FUNC1(p2p, "Driver ended Listen state (freq=%u)", freq);
	p2p->drv_in_listen = 0;
	if (p2p->in_listen)
		return 0; /* Internal timeout will trigger the next step */

	if (p2p->state == P2P_WAIT_PEER_CONNECT && p2p->go_neg_peer &&
	    p2p->pending_listen_freq) {
		/*
		 * Better wait a bit if the driver is unable to start
		 * offchannel operation for some reason to continue with
		 * P2P_WAIT_PEER_(IDLE/CONNECT) state transitions.
		 */
		FUNC1(p2p,
			"Listen operation did not seem to start - delay idle phase to avoid busy loop");
		FUNC5(p2p, 0, 100000);
		return 1;
	}

	if (p2p->state == P2P_CONNECT_LISTEN && p2p->go_neg_peer) {
		if (p2p->go_neg_peer->connect_reqs >= 120) {
			FUNC1(p2p, "Timeout on sending GO Negotiation Request without getting response");
			FUNC2(p2p, -1);
			return 0;
		}

		FUNC4(p2p, P2P_CONNECT);
		FUNC0(p2p, p2p->go_neg_peer);
		return 1;
	} else if (p2p->state == P2P_SEARCH) {
		if (p2p->p2p_scan_running) {
			 /*
			  * Search is already in progress. This can happen if
			  * an Action frame RX is reported immediately after
			  * the end of a remain-on-channel operation and the
			  * response frame to that is sent using an offchannel
			  * operation while in p2p_find. Avoid an attempt to
			  * restart a scan here.
			  */
			FUNC1(p2p, "p2p_scan already in progress - do not try to start a new one");
			return 1;
		}
		if (p2p->pending_listen_freq) {
			/*
			 * Better wait a bit if the driver is unable to start
			 * offchannel operation for some reason. p2p_search()
			 * will be started from internal timeout.
			 */
			FUNC1(p2p, "Listen operation did not seem to start - delay search phase to avoid busy loop");
			FUNC5(p2p, 0, 100000);
			return 1;
		}
		if (p2p->search_delay) {
			FUNC1(p2p, "Delay search operation by %u ms",
				p2p->search_delay);
			FUNC5(p2p, p2p->search_delay / 1000,
					(p2p->search_delay % 1000) * 1000);
			return 1;
		}
		FUNC3(p2p);
		return 1;
	}

	return 0;
}