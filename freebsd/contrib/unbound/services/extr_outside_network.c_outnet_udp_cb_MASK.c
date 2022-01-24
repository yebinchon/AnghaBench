#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  key; } ;
struct pending {unsigned int id; TYPE_4__* pc; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* cb ) (struct comm_point*,int /*<<< orphan*/ ,int,struct comm_reply*) ;TYPE_1__ node; int /*<<< orphan*/  timer; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct outside_network {scalar_t__ unwanted_threshold; scalar_t__ unwanted_total; TYPE_2__* pending; int /*<<< orphan*/  unwanted_param; int /*<<< orphan*/  (* unwanted_action ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  unwanted_replies; } ;
struct comm_reply {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct comm_point {int /*<<< orphan*/  buffer; } ;
struct TYPE_7__ {struct comm_point* cp; } ;
struct TYPE_6__ {scalar_t__ count; } ;

/* Variables and functions */
 scalar_t__ LDNS_HEADER_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NETEVENT_NOERROR ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  (*) (struct comm_point*,int /*<<< orphan*/ ,int,struct comm_reply*)) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct outside_network*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct pending*) ; 
 int /*<<< orphan*/  FUNC12 (struct outside_network*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_2__*,struct pending*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct comm_point*,int /*<<< orphan*/ ,int,struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 

int 
FUNC21(struct comm_point* c, void* arg, int error,
	struct comm_reply *reply_info)
{
	struct outside_network* outnet = (struct outside_network*)arg;
	struct pending key;
	struct pending* p;
	FUNC20(VERB_ALGO, "answer cb");

	if(error != NETEVENT_NOERROR) {
		FUNC20(VERB_QUERY, "outnetudp got udp error %d", error);
		return 0;
	}
	if(FUNC16(c->buffer) < LDNS_HEADER_SIZE) {
		FUNC20(VERB_QUERY, "outnetudp udp too short");
		return 0;
	}
	FUNC6(reply_info);

	/* setup lookup key */
	key.id = (unsigned)FUNC0(FUNC15(c->buffer));
	FUNC9(&key.addr, &reply_info->addr, reply_info->addrlen);
	key.addrlen = reply_info->addrlen;
	FUNC20(VERB_ALGO, "Incoming reply id = %4.4x", key.id);
	FUNC5(VERB_ALGO, "Incoming reply addr =", 
		&reply_info->addr, reply_info->addrlen);

	/* find it, see if this thing is a valid query response */
	FUNC20(VERB_ALGO, "lookup size is %d entries", (int)outnet->pending->count);
	p = (struct pending*)FUNC14(outnet->pending, &key);
	if(!p) {
		FUNC20(VERB_QUERY, "received unwanted or unsolicited udp reply dropped.");
		FUNC7(VERB_ALGO, "dropped message", c->buffer);
		outnet->unwanted_replies++;
		if(outnet->unwanted_threshold && ++outnet->unwanted_total 
			>= outnet->unwanted_threshold) {
			FUNC8("unwanted reply total reached threshold (%u)"
				" you may be under attack."
				" defensive action: clearing the cache",
				(unsigned)outnet->unwanted_threshold);
			FUNC2(FUNC3(
				outnet->unwanted_action));
			(*outnet->unwanted_action)(outnet->unwanted_param);
			outnet->unwanted_total = 0;
		}
		return 0;
	}

	FUNC20(VERB_ALGO, "received udp reply.");
	FUNC7(VERB_ALGO, "udp message", c->buffer);
	if(p->pc->cp != c) {
		FUNC20(VERB_QUERY, "received reply id,addr on wrong port. "
			"dropped.");
		outnet->unwanted_replies++;
		if(outnet->unwanted_threshold && ++outnet->unwanted_total 
			>= outnet->unwanted_threshold) {
			FUNC8("unwanted reply total reached threshold (%u)"
				" you may be under attack."
				" defensive action: clearing the cache",
				(unsigned)outnet->unwanted_threshold);
			FUNC2(FUNC3(
				outnet->unwanted_action));
			(*outnet->unwanted_action)(outnet->unwanted_param);
			outnet->unwanted_total = 0;
		}
		return 0;
	}
	FUNC1(p->timer);
	FUNC20(VERB_ALGO, "outnet handle udp reply");
	/* delete from tree first in case callback creates a retry */
	(void)FUNC13(outnet->pending, p->node.key);
	if(p->cb) {
		FUNC2(FUNC4(p->cb));
		(void)(*p->cb)(p->pc->cp, p->cb_arg, NETEVENT_NOERROR, reply_info);
	}
	FUNC12(outnet, p->pc);
	FUNC11(NULL, p);
	FUNC10(outnet);
	return 0;
}