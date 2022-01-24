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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 size_t LDNS_HEADER_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 scalar_t__ FUNC5 (char**,size_t*,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,size_t*,char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,size_t*,char**,size_t*,int /*<<< orphan*/ *,size_t) ; 

int FUNC9(uint8_t** d, size_t* dlen, char** s, size_t* slen)
{
	int w = 0;
	unsigned qdcount, ancount, nscount, arcount, i;
	uint8_t* pkt = *d;
	size_t pktlen = *dlen;
	if(*dlen >= LDNS_HEADER_SIZE) {
		qdcount = (unsigned)FUNC3(*d);
		ancount = (unsigned)FUNC0(*d);
		nscount = (unsigned)FUNC2(*d);
		arcount = (unsigned)FUNC1(*d);
	} else {
		qdcount = ancount = nscount = arcount = 0;
	}
	w += FUNC6(d, dlen, s, slen);
	w += FUNC5(s, slen, "\n");
	w += FUNC5(s, slen, ";; QUESTION SECTION:\n");
	for(i=0; i<qdcount; i++) {
		w += FUNC8(d, dlen, s, slen,
			pkt, pktlen);
		if(!*dlen) break;
	}
	w += FUNC5(s, slen, "\n");
	w += FUNC5(s, slen, ";; ANSWER SECTION:\n");
	for(i=0; i<ancount; i++) {
		w += FUNC7(d, dlen, s, slen, pkt, pktlen);
		if(!*dlen) break;
	}
	w += FUNC5(s, slen, "\n");
	w += FUNC5(s, slen, ";; AUTHORITY SECTION:\n");
	for(i=0; i<nscount; i++) {
		w += FUNC7(d, dlen, s, slen, pkt, pktlen);
		if(!*dlen) break;
	}
	w += FUNC5(s, slen, "\n");
	w += FUNC5(s, slen, ";; ADDITIONAL SECTION:\n");
	for(i=0; i<arcount; i++) {
		w += FUNC7(d, dlen, s, slen, pkt, pktlen);
		if(!*dlen) break;
	}
	/* other fields: WHEN(time), SERVER(IP) not available here. */
	w += FUNC5(s, slen, ";; MSG SIZE  rcvd: %d\n", (int)pktlen);
	if(*dlen > 0) {
		w += FUNC4(";; trailing garbage 0x",
			d, dlen, s, slen);
		w += FUNC5(s, slen, "\n");
	}
	return w;
}