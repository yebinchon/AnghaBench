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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  auth_zones; } ;
struct worker {TYPE_1__ env; } ;
struct query_info {int /*<<< orphan*/  qname; int /*<<< orphan*/  qclass; int /*<<< orphan*/  qname_len; } ;
struct edns_data {int /*<<< orphan*/ * opt_list; int /*<<< orphan*/  bits; scalar_t__ ext_rcode; int /*<<< orphan*/  udp_size; int /*<<< orphan*/  edns_version; } ;
struct comm_reply {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  sr ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EDNS_ADVERTISED_SIZE ; 
 int /*<<< orphan*/  EDNS_ADVERTISED_VERSION ; 
 int /*<<< orphan*/  EDNS_DO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LDNS_PACKET_NOTIFY ; 
 int LDNS_RCODE_NOERROR ; 
 int LDNS_RCODE_REFUSED ; 
 int LDNS_RCODE_SERVFAIL ; 
 scalar_t__ VERB_DETAIL ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct edns_data*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,...) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void
FUNC9(struct worker* w, struct query_info* qinfo, 
	struct edns_data* edns, sldns_buffer* pkt, struct comm_reply* repinfo)
{
	int refused = 0;
	int rcode = LDNS_RCODE_NOERROR;
	uint32_t serial = 0;
	int has_serial;
	if(!w->env.auth_zones) return;
	has_serial = FUNC1(pkt, &serial);
	if(FUNC2(w->env.auth_zones, &w->env, qinfo->qname,
		qinfo->qname_len, qinfo->qclass, &repinfo->addr,
		repinfo->addrlen, has_serial, serial, &refused)) {
		rcode = LDNS_RCODE_NOERROR;
	} else {
		if(refused)
			rcode = LDNS_RCODE_REFUSED;
		else	rcode = LDNS_RCODE_SERVFAIL;
	}

	if(verbosity >= VERB_DETAIL) {
		char buf[380];
		char zname[255+1];
		char sr[25];
		FUNC3(qinfo->qname, zname);
		sr[0]=0;
		if(has_serial)
			FUNC8(sr, sizeof(sr), "serial %u ",
				(unsigned)serial);
		if(rcode == LDNS_RCODE_REFUSED)
			FUNC8(buf, sizeof(buf),
				"refused NOTIFY %sfor %s from", sr, zname);
		else if(rcode == LDNS_RCODE_SERVFAIL)
			FUNC8(buf, sizeof(buf),
				"servfail for NOTIFY %sfor %s from", sr, zname);
		else	FUNC8(buf, sizeof(buf),
				"received NOTIFY %sfor %s from", sr, zname);
		FUNC5(VERB_DETAIL, buf, &repinfo->addr, repinfo->addrlen);
	}
	edns->edns_version = EDNS_ADVERTISED_VERSION;
	edns->udp_size = EDNS_ADVERTISED_SIZE;
	edns->ext_rcode = 0;
	edns->bits &= EDNS_DO;
	edns->opt_list = NULL;
	FUNC4(pkt, rcode, qinfo,
		*(uint16_t*)(void *)FUNC6(pkt),
		FUNC7(pkt, 2), edns);
	FUNC0(FUNC6(pkt), LDNS_PACKET_NOTIFY);
}