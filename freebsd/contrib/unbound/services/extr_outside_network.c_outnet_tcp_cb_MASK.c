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
typedef  int /*<<< orphan*/  uint16_t ;
struct pending_tcp {scalar_t__ id; TYPE_1__* query; } ;
struct outside_network {int dummy; } ;
struct comm_reply {int dummy; } ;
struct comm_point {int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* cb ) (struct comm_point*,int /*<<< orphan*/ ,int,struct comm_reply*) ;int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; struct outside_network* outnet; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NETEVENT_CLOSED ; 
 int NETEVENT_NOERROR ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC1 (struct outside_network*,struct pending_tcp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (struct comm_point*,int /*<<< orphan*/ ,int,struct comm_reply*)) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct comm_point*,int /*<<< orphan*/ ,int,struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

int 
FUNC9(struct comm_point* c, void* arg, int error,
	struct comm_reply *reply_info)
{
	struct pending_tcp* pend = (struct pending_tcp*)arg;
	struct outside_network* outnet = pend->query->outnet;
	FUNC8(VERB_ALGO, "outnettcp cb");
	if(error != NETEVENT_NOERROR) {
		FUNC8(VERB_QUERY, "outnettcp got tcp error %d", error);
		/* pass error below and exit */
	} else {
		/* check ID */
		if(FUNC6(c->buffer) < sizeof(uint16_t) ||
			FUNC0(FUNC5(c->buffer))!=pend->id) {
			FUNC4(VERB_QUERY, 
				"outnettcp: bad ID in reply, from:",
				&pend->query->addr, pend->query->addrlen);
			error = NETEVENT_CLOSED;
		}
	}
	FUNC2(FUNC3(pend->query->cb));
	(void)(*pend->query->cb)(c, pend->query->cb_arg, error, reply_info);
	FUNC1(outnet, pend);
	return 0;
}