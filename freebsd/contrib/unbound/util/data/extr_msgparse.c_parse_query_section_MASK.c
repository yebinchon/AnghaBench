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
struct msg_parse {int qdcount; void* qclass; void* qtype; int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int LDNS_RCODE_FORMERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(sldns_buffer* pkt, struct msg_parse* msg)
{
	if(msg->qdcount == 0)
		return 0;
	if(msg->qdcount > 1)
		return LDNS_RCODE_FORMERR;
	FUNC0(msg->qdcount == 1);
	if(FUNC4(pkt) <= 0)
		return LDNS_RCODE_FORMERR;
	msg->qname = FUNC2(pkt);
	if((msg->qname_len = FUNC1(pkt)) == 0)
		return LDNS_RCODE_FORMERR;
	if(FUNC4(pkt) < sizeof(uint16_t)*2)
		return LDNS_RCODE_FORMERR;
	msg->qtype = FUNC3(pkt);
	msg->qclass = FUNC3(pkt);
	return 0;
}