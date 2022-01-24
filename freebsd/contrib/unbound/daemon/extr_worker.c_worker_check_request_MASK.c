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
struct worker {TYPE_2__* daemon; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {scalar_t__ harden_large_queries; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_HEADER_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_PACKET_NOTIFY ; 
 scalar_t__ LDNS_PACKET_QUERY ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LDNS_RCODE_FORMERR ; 
 int /*<<< orphan*/  LDNS_RCODE_NOTIMPL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ NORMAL_UDP_SIZE ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (struct worker*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC12(sldns_buffer* pkt, struct worker* worker)
{
	if(FUNC9(pkt) < LDNS_HEADER_SIZE) {
		FUNC10(VERB_QUERY, "request too short, discarded");
		return -1;
	}
	if(FUNC9(pkt) > NORMAL_UDP_SIZE && 
		worker->daemon->cfg->harden_large_queries) {
		FUNC10(VERB_QUERY, "request too large, discarded");
		return -1;
	}
	if(FUNC5(FUNC8(pkt))) {
		FUNC10(VERB_QUERY, "request has QR bit on, discarded");
		return -1;
	}
	if(FUNC7(FUNC8(pkt))) {
		FUNC6(FUNC8(pkt));
		FUNC10(VERB_QUERY, "request bad, has TC bit on");
		return FUNC11(worker, LDNS_RCODE_FORMERR);
	}
	if(FUNC3(FUNC8(pkt)) != LDNS_PACKET_QUERY &&
		FUNC3(FUNC8(pkt)) != LDNS_PACKET_NOTIFY) {
		FUNC10(VERB_QUERY, "request unknown opcode %d", 
			FUNC3(FUNC8(pkt)));
		return FUNC11(worker, LDNS_RCODE_NOTIMPL);
	}
	if(FUNC4(FUNC8(pkt)) != 1) {
		FUNC10(VERB_QUERY, "request wrong nr qd=%d", 
			FUNC4(FUNC8(pkt)));
		return FUNC11(worker, LDNS_RCODE_FORMERR);
	}
	if(FUNC0(FUNC8(pkt)) != 0 && 
		(FUNC0(FUNC8(pkt)) != 1 ||
		FUNC3(FUNC8(pkt)) != LDNS_PACKET_NOTIFY)) {
		FUNC10(VERB_QUERY, "request wrong nr an=%d", 
			FUNC0(FUNC8(pkt)));
		return FUNC11(worker, LDNS_RCODE_FORMERR);
	}
	if(FUNC2(FUNC8(pkt)) != 0) {
		FUNC10(VERB_QUERY, "request wrong nr ns=%d", 
			FUNC2(FUNC8(pkt)));
		return FUNC11(worker, LDNS_RCODE_FORMERR);
	}
	if(FUNC1(FUNC8(pkt)) > 1) {
		FUNC10(VERB_QUERY, "request wrong nr ar=%d", 
			FUNC1(FUNC8(pkt)));
		return FUNC11(worker, LDNS_RCODE_FORMERR);
	}
	return 0;
}