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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct worker {int /*<<< orphan*/  scratchpad; int /*<<< orphan*/  env; } ;
struct edns_data {int /*<<< orphan*/ * opt_list; int /*<<< orphan*/  bits; int /*<<< orphan*/  udp_size; int /*<<< orphan*/  edns_version; } ;
struct comm_reply {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int BIT_QR ; 
 int BIT_RA ; 
 int /*<<< orphan*/  EDNS_ADVERTISED_SIZE ; 
 int /*<<< orphan*/  EDNS_ADVERTISED_VERSION ; 
 int /*<<< orphan*/  EDNS_DO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LDNS_RCODE_NOERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int LDNS_RR_CLASS_CH ; 
 int LDNS_RR_TYPE_TXT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct edns_data*) ; 
 scalar_t__ FUNC5 (struct edns_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct edns_data*,struct comm_reply*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC18 (char*) ; 

__attribute__((used)) static void
FUNC19(sldns_buffer* pkt, char** str, int num, struct edns_data* edns,
	struct worker* worker, struct comm_reply* repinfo)
{
	int i;
	unsigned int rd = FUNC3(FUNC8(pkt));
	unsigned int cd = FUNC1(FUNC8(pkt));
	FUNC10(pkt);
	FUNC13(pkt, (ssize_t)sizeof(uint16_t)); /* skip id */
	FUNC15(pkt, (uint16_t)(BIT_QR|BIT_RA));
	if(rd) FUNC2(FUNC8(pkt));
	if(cd) FUNC0(FUNC8(pkt));
	FUNC15(pkt, 1); /* qdcount */
	FUNC15(pkt, (uint16_t)num); /* ancount */
	FUNC15(pkt, 0); /* nscount */
	FUNC15(pkt, 0); /* arcount */
	(void)FUNC7(pkt); /* skip qname */
	FUNC13(pkt, (ssize_t)sizeof(uint16_t)); /* skip qtype */
	FUNC13(pkt, (ssize_t)sizeof(uint16_t)); /* skip qclass */
	for(i=0; i<num; i++) {
		size_t len = FUNC18(str[i]);
		if(len>255) len=255; /* cap size of TXT record */
		FUNC15(pkt, 0xc00c); /* compr ptr to query */
		FUNC15(pkt, LDNS_RR_TYPE_TXT);
		FUNC15(pkt, LDNS_RR_CLASS_CH);
		FUNC16(pkt, 0); /* TTL */
		FUNC15(pkt, sizeof(uint8_t) + len);
		FUNC17(pkt, len);
		FUNC14(pkt, str[i], len);
	}
	FUNC11(pkt);
	edns->edns_version = EDNS_ADVERTISED_VERSION;
	edns->udp_size = EDNS_ADVERTISED_SIZE;
	edns->bits &= EDNS_DO;
	if(!FUNC6(&worker->env, NULL, NULL, NULL,
		LDNS_RCODE_NOERROR, edns, repinfo, worker->scratchpad))
			edns->opt_list = NULL;
	if(FUNC9(pkt) >=
		FUNC12(pkt)+FUNC5(edns))
		FUNC4(pkt, edns);
}