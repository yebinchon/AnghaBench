#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct regional {int dummy; } ;
struct compress_tree_node {int dummy; } ;
struct TYPE_3__ {int* _wireformat; scalar_t__ _dname_count; } ;
typedef  TYPE_1__ sldns_rr_descriptor ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
#define  LDNS_RDF_TYPE_DNAME 129 
#define  LDNS_RDF_TYPE_STR 128 
 int RETVAL_OK ; 
 int RETVAL_TRUNC ; 
 int FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int,struct regional*,struct compress_tree_node**) ; 
 int FUNC1 (scalar_t__*,size_t*) ; 
 size_t FUNC2 (int) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t,size_t) ; 

__attribute__((used)) static int
FUNC8(sldns_buffer* pkt, uint8_t* rdata, size_t todolen, 
	struct regional* region, struct compress_tree_node** tree, 
	const sldns_rr_descriptor* desc)
{
	int labs, r, rdf = 0;
	size_t dname_len, len, pos = FUNC3(pkt);
	uint8_t count = desc->_dname_count;

	FUNC5(pkt, 2); /* rdata len fill in later */
	/* space for rdatalen checked for already */
	rdata += 2;
	todolen -= 2;
	while(todolen > 0 && count) {
		switch(desc->_wireformat[rdf]) {
		case LDNS_RDF_TYPE_DNAME:
			labs = FUNC1(rdata, &dname_len);
			if((r=FUNC0(rdata, pkt, labs, region, 
				tree)) != RETVAL_OK)
				return r;
			rdata += dname_len;
			todolen -= dname_len;
			count--;
			len = 0;
			break;
		case LDNS_RDF_TYPE_STR:
			len = *rdata + 1;
			break;
		default:
			len = FUNC2(desc->_wireformat[rdf]);
		}
		if(len) {
			/* copy over */
			if(FUNC4(pkt) < len)
				return RETVAL_TRUNC;
			FUNC6(pkt, rdata, len);
			todolen -= len;
			rdata += len;
		}
		rdf++;
	}
	/* copy remainder */
	if(todolen > 0) {
		if(FUNC4(pkt) < todolen)
			return RETVAL_TRUNC;
		FUNC6(pkt, rdata, todolen);
	}

	/* set rdata len */
	FUNC7(pkt, pos, FUNC3(pkt)-pos-2);
	return RETVAL_OK;
}