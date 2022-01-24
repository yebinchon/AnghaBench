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
struct edns_option {scalar_t__ opt_code; scalar_t__ opt_len; int /*<<< orphan*/  opt_data; struct edns_option* next; } ;
struct edns_data {scalar_t__ udp_size; scalar_t__ bits; struct edns_option* opt_list; int /*<<< orphan*/  edns_version; int /*<<< orphan*/  ext_rcode; int /*<<< orphan*/  edns_present; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_OPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC10(sldns_buffer* pkt, struct edns_data* edns)
{
	size_t len;
	size_t rdatapos;
	struct edns_option* opt;
	if(!edns || !edns->edns_present)
		return;
	/* inc additional count */
	FUNC8(pkt, 10,
		FUNC4(pkt, 10) + 1);
	len = FUNC2(pkt);
	FUNC0(pkt);
	FUNC5(pkt, len);
	/* write EDNS record */
	FUNC9(pkt, 0); /* '.' label */
	FUNC7(pkt, LDNS_RR_TYPE_OPT); /* type */
	FUNC7(pkt, edns->udp_size); /* class */
	FUNC9(pkt, edns->ext_rcode); /* ttl */
	FUNC9(pkt, edns->edns_version);
	FUNC7(pkt, edns->bits);
	rdatapos = FUNC3(pkt);
	FUNC7(pkt, 0); /* rdatalen */
	/* write rdata */
	for(opt=edns->opt_list; opt; opt=opt->next) {
		FUNC7(pkt, opt->opt_code);
		FUNC7(pkt, opt->opt_len);
		if(opt->opt_len != 0)
			FUNC6(pkt, opt->opt_data, opt->opt_len);
	}
	if(edns->opt_list)
		FUNC8(pkt, rdatapos, 
			FUNC3(pkt)-rdatapos-2);
	FUNC1(pkt);
}