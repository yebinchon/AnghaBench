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
struct regional {int dummy; } ;
struct edns_data {int udp_size; int edns_present; int /*<<< orphan*/ * opt_list; void* bits; void* edns_version; void* ext_rcode; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int LDNS_RCODE_FORMERR ; 
 int LDNS_RCODE_SERVFAIL ; 
 void* LDNS_RR_TYPE_OPT ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct edns_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t,struct edns_data*,struct regional*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 
 size_t FUNC13 (int /*<<< orphan*/ *) ; 

int 
FUNC14(sldns_buffer* pkt, struct edns_data* edns,
	struct regional* region)
{
	size_t rdata_len;
	uint8_t* rdata_ptr;
	FUNC4(FUNC3(FUNC9(pkt)) == 1);
	if(FUNC0(FUNC9(pkt)) != 0 ||
		FUNC2(FUNC9(pkt)) != 0) {
		if(!FUNC8(pkt, ((int)FUNC0(FUNC9(pkt)))+
			((int)FUNC2(FUNC9(pkt)))))
			return 0;
	}
	/* check edns section is present */
	if(FUNC1(FUNC9(pkt)) > 1) {
		return LDNS_RCODE_FORMERR;
	}
	if(FUNC1(FUNC9(pkt)) == 0) {
		FUNC5(edns, 0, sizeof(*edns));
		edns->udp_size = 512;
		return 0;
	}
	/* domain name must be the root of length 1. */
	if(FUNC7(pkt) != 1)
		return LDNS_RCODE_FORMERR;
	if(FUNC13(pkt) < 10) /* type, class, ttl, rdatalen */
		return LDNS_RCODE_FORMERR;
	if(FUNC11(pkt) != LDNS_RR_TYPE_OPT)
		return LDNS_RCODE_FORMERR;
	edns->edns_present = 1;
	edns->udp_size = FUNC11(pkt); /* class is udp size */
	edns->ext_rcode = FUNC12(pkt); /* ttl used for bits */
	edns->edns_version = FUNC12(pkt);
	edns->bits = FUNC11(pkt);
	edns->opt_list = NULL;

	/* take the options */
	rdata_len = FUNC11(pkt);
	if(FUNC13(pkt) < rdata_len)
		return LDNS_RCODE_FORMERR;
	rdata_ptr = FUNC10(pkt);
	if(!FUNC6(rdata_ptr, rdata_len, edns, region))
		return LDNS_RCODE_SERVFAIL;

	/* ignore rrsigs */

	return 0;
}