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
struct reply_info {int dummy; } ;
struct regional {int dummy; } ;
struct query_info {int /*<<< orphan*/ * local_alias; int /*<<< orphan*/ * qname; } ;
struct msg_parse {int dummy; } ;
struct edns_data {int dummy; } ;
struct alloc_cache {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int LDNS_RCODE_SERVFAIL ; 
 int /*<<< orphan*/  FUNC0 (struct msg_parse*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct msg_parse*,struct alloc_cache*,struct query_info*,struct reply_info**,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct msg_parse*,struct edns_data*,struct regional*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct msg_parse*,struct regional*) ; 
 int /*<<< orphan*/  FUNC4 (struct query_info*) ; 
 struct msg_parse* FUNC5 (struct regional*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct reply_info*,struct alloc_cache*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(sldns_buffer* pkt, struct alloc_cache* alloc,
        struct query_info* qinf, struct reply_info** rep, 
	struct regional* region, struct edns_data* edns)
{
	/* use scratch pad region-allocator during parsing. */
	struct msg_parse* msg;
	int ret;
	
	qinf->qname = NULL;
	qinf->local_alias = NULL;
	*rep = NULL;
	if(!(msg = FUNC5(region, sizeof(*msg)))) {
		return LDNS_RCODE_SERVFAIL;
	}
	FUNC0(msg, 0, sizeof(*msg));
	
	FUNC7(pkt, 0);
	if((ret = FUNC3(pkt, msg, region)) != 0) {
		return ret;
	}
	if((ret = FUNC2(msg, edns, region)) != 0)
		return ret;

	/* parse OK, allocate return structures */
	/* this also performs dname decompression */
	if(!FUNC1(pkt, msg, alloc, qinf, rep, NULL)) {
		FUNC4(qinf);
		FUNC6(*rep, alloc);
		*rep = NULL;
		return LDNS_RCODE_SERVFAIL;
	}
	return 0;
}