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
typedef  int /*<<< orphan*/  uint16_t ;
struct regional {int dummy; } ;
struct msg_parse {int qdcount; int ancount; int nscount; int arcount; scalar_t__ ar_rrsets; scalar_t__ ns_rrsets; scalar_t__ an_rrsets; scalar_t__ rrset_count; void* flags; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ LDNS_HEADER_SIZE ; 
 int LDNS_RCODE_FORMERR ; 
 int /*<<< orphan*/  LDNS_SECTION_ADDITIONAL ; 
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 int /*<<< orphan*/  LDNS_SECTION_AUTHORITY ; 
 int FUNC0 (int /*<<< orphan*/ *,struct msg_parse*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct msg_parse*,struct regional*,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(sldns_buffer* pkt, struct msg_parse* msg, struct regional* region)
{
	int ret;
	if(FUNC4(pkt) < LDNS_HEADER_SIZE)
		return LDNS_RCODE_FORMERR;
	/* read the header */
	FUNC2(pkt, &msg->id, sizeof(uint16_t));
	msg->flags = FUNC3(pkt);
	msg->qdcount = FUNC3(pkt);
	msg->ancount = FUNC3(pkt);
	msg->nscount = FUNC3(pkt);
	msg->arcount = FUNC3(pkt);
	if(msg->qdcount > 1)
		return LDNS_RCODE_FORMERR;
	if((ret = FUNC0(pkt, msg)) != 0)
		return ret;
	if((ret = FUNC1(pkt, msg, region, LDNS_SECTION_ANSWER,
		msg->ancount, &msg->an_rrsets)) != 0)
		return ret;
	if((ret = FUNC1(pkt, msg, region, LDNS_SECTION_AUTHORITY,
		msg->nscount, &msg->ns_rrsets)) != 0)
		return ret;
	if(FUNC4(pkt) == 0 && msg->arcount == 1) {
		/* BIND accepts leniently that an EDNS record is missing.
		 * so, we do too. */
	} else if((ret = FUNC1(pkt, msg, region,
		LDNS_SECTION_ADDITIONAL, msg->arcount, &msg->ar_rrsets)) != 0)
		return ret;
	/* if(sldns_buffer_remaining(pkt) > 0) { */
		/* there is spurious data at end of packet. ignore */
	/* } */
	msg->rrset_count = msg->an_rrsets + msg->ns_rrsets + msg->ar_rrsets;
	return 0;
}