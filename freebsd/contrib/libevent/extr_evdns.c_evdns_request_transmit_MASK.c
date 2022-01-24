#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request {int transmit_me; int trans_id; int /*<<< orphan*/  tx_count; TYPE_3__* base; int /*<<< orphan*/  timeout_event; TYPE_1__* ns; } ;
struct TYPE_5__ {int /*<<< orphan*/  global_timeout; } ;
struct TYPE_4__ {int choked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  EVDNS_LOG_DEBUG ; 
 int /*<<< orphan*/  EVDNS_LOG_WARN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct request*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct request*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC7(struct request *req) {
	int retcode = 0, r;

	FUNC0(req->base);
	FUNC1(req);
	/* if we fail to send this packet then this flag marks it */
	/* for evdns_transmit */
	req->transmit_me = 1;
	FUNC2(req->trans_id != 0xffff);

	if (!req->ns)
	{
		/* unable to transmit request if no nameservers */
		return 1;
	}

	if (req->ns->choked) {
		/* don't bother trying to write to a socket */
		/* which we have had EAGAIN from */
		return 1;
	}

	r = FUNC3(req, req->ns);
	switch (r) {
	case 1:
		/* temp failure */
		req->ns->choked = 1;
		FUNC6(req->ns, 1);
		return 1;
	case 2:
		/* failed to transmit the request entirely. */
		retcode = 1;
		/* fall through: we'll set a timeout, which will time out,
		 * and make us retransmit the request anyway. */
	default:
		/* all ok */
		FUNC5(EVDNS_LOG_DEBUG,
		    "Setting timeout for request %p, sent to nameserver %p", req, req->ns);
		if (FUNC4(&req->timeout_event, &req->base->global_timeout) < 0) {
			FUNC5(EVDNS_LOG_WARN,
		      "Error from libevent when adding timer for request %p",
			    req);
			/* ???? Do more? */
		}
		req->tx_count++;
		req->transmit_me = 0;
		return retcode;
	}
}