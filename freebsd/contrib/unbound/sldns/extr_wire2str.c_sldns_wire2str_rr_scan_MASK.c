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
typedef  scalar_t__ uint8_t ;
typedef  void* uint16_t ;

/* Variables and functions */
 void* LDNS_RR_TYPE_OPT ; 
 scalar_t__ FUNC0 (char*,scalar_t__**,size_t*,char**,size_t*) ; 
 void* FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__**,size_t*,char**,size_t*) ; 
 int FUNC3 (char**,size_t*,char*,...) ; 
 scalar_t__ FUNC4 (char**,size_t*,void*) ; 
 scalar_t__ FUNC5 (scalar_t__**,size_t*,char**,size_t*,scalar_t__*,size_t) ; 
 int FUNC6 (scalar_t__**,size_t*,char**,size_t*,scalar_t__*,size_t) ; 
 scalar_t__ FUNC7 (scalar_t__**,size_t*,char**,size_t*,void*,scalar_t__*,size_t) ; 
 scalar_t__ FUNC8 (char**,size_t*,scalar_t__*,size_t,size_t,void*) ; 
 scalar_t__ FUNC9 (char**,size_t*,void*) ; 

int FUNC10(uint8_t** d, size_t* dlen, char** s, size_t* slen,
	uint8_t* pkt, size_t pktlen)
{
	int w = 0;
	uint8_t* rr = *d;
	size_t rrlen = *dlen, dname_off, rdlen, ordlen;
	uint16_t rrtype = 0;
	
	if(*dlen >= 3 && (*d)[0]==0 &&
		FUNC1((*d)+1)==LDNS_RR_TYPE_OPT) {
		/* perform EDNS OPT processing */
		return FUNC6(d, dlen, s, slen, pkt, pktlen);
	}

	/* try to scan the rdata with pretty-printing, but if that fails, then
	 * scan the rdata as an unknown RR type */
	w += FUNC5(d, dlen, s, slen, pkt, pktlen);
	w += FUNC3(s, slen, "\t");
	dname_off = rrlen-(*dlen);
	if(*dlen == 4) {
		/* like a question-RR */
		uint16_t t = FUNC1(*d);
		uint16_t c = FUNC1((*d)+2);
		(*d)+=4;
		(*dlen)-=4;
		w += FUNC4(s, slen, c);
		w += FUNC3(s, slen, "\t");
		w += FUNC9(s, slen, t);
		w += FUNC3(s, slen, " ; Error no ttl,rdata\n");
		return w;
	}
	if(*dlen < 8) {
		if(*dlen == 0)
			return w + FUNC3(s, slen, ";Error missing RR\n");
		w += FUNC0(";Error partial RR 0x", d, dlen, s, slen);
		return w + FUNC3(s, slen, "\n");
	}
	rrtype = FUNC1(*d);
	w += FUNC2(d, dlen, s, slen);
	w += FUNC3(s, slen, "\t");

	/* rdata */
	if(*dlen < 2) {
		if(*dlen == 0)
			return w + FUNC3(s, slen, ";Error missing rdatalen\n");
		w += FUNC0(";Error missing rdatalen 0x",
			d, dlen, s, slen);
		return w + FUNC3(s, slen, "\n");
	}
	rdlen = FUNC1(*d);
	ordlen = rdlen;
	(*d)+=2;
	(*dlen)-=2;
	if(*dlen < rdlen) {
		w += FUNC3(s, slen, "\\# %u ", (unsigned)rdlen);
		if(*dlen == 0)
			return w + FUNC3(s, slen, ";Error missing rdata\n");
		w += FUNC0(";Error partial rdata 0x", d, dlen, s, slen);
		return w + FUNC3(s, slen, "\n");
	}
	w += FUNC7(d, &rdlen, s, slen, rrtype, pkt, pktlen);
	(*dlen) -= (ordlen-rdlen);

	/* default comment */
	w += FUNC8(s, slen, rr, rrlen, dname_off,
		rrtype);
	w += FUNC3(s, slen, "\n");
	return w;
}