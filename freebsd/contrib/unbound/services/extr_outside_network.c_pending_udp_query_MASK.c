#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct sldns_buffer {int dummy; } ;
struct serviced_query {TYPE_2__* outnet; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {struct pending* key; } ;
struct pending {int timeout; struct pending* next_waiting; int /*<<< orphan*/  timer; int /*<<< orphan*/ * pkt; int /*<<< orphan*/  pkt_len; TYPE_1__ node; void* cb_arg; int /*<<< orphan*/ * cb; int /*<<< orphan*/  addr; int /*<<< orphan*/  addrlen; struct serviced_query* sq; TYPE_2__* outnet; } ;
typedef  int /*<<< orphan*/  comm_point_callback_type ;
struct TYPE_4__ {struct pending* udp_wait_last; struct pending* udp_wait_first; int /*<<< orphan*/ * unused_fds; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pending*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pending*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct pending*) ; 
 int /*<<< orphan*/  pending_udp_timer_cb ; 
 int /*<<< orphan*/  FUNC7 (struct pending*,struct sldns_buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

struct pending* 
FUNC11(struct serviced_query* sq, struct sldns_buffer* packet,
	int timeout, comm_point_callback_type* cb, void* cb_arg)
{
	struct pending* pend = (struct pending*)FUNC0(1, sizeof(*pend));
	if(!pend) return NULL;
	pend->outnet = sq->outnet;
	pend->sq = sq;
	pend->addrlen = sq->addrlen;
	FUNC5(&pend->addr, &sq->addr, sq->addrlen);
	pend->cb = cb;
	pend->cb_arg = cb_arg;
	pend->node.key = pend;
	pend->timer = FUNC1(sq->outnet->base, pending_udp_timer_cb,
		pend);
	if(!pend->timer) {
		FUNC3(pend);
		return NULL;
	}

	if(sq->outnet->unused_fds == NULL) {
		/* no unused fd, cannot create a new port (randomly) */
		FUNC10(VERB_ALGO, "no fds available, udp query waiting");
		pend->timeout = timeout;
		pend->pkt_len = FUNC9(packet);
		pend->pkt = (uint8_t*)FUNC4(FUNC8(packet),
			pend->pkt_len);
		if(!pend->pkt) {
			FUNC2(pend->timer);
			FUNC3(pend);
			return NULL;
		}
		/* put at end of waiting list */
		if(sq->outnet->udp_wait_last)
			sq->outnet->udp_wait_last->next_waiting = pend;
		else 
			sq->outnet->udp_wait_first = pend;
		sq->outnet->udp_wait_last = pend;
		return pend;
	}
	if(!FUNC7(pend, packet, timeout)) {
		FUNC6(sq->outnet, pend);
		return NULL;
	}
	return pend;
}