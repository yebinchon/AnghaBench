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

/* Variables and functions */
 int LDNS_KEY_SEP_KEY ; 
 int LDNS_KEY_ZONE_KEY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,size_t) ; 
 size_t FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (unsigned char*,size_t,int) ; 
 scalar_t__ FUNC3 (char**,size_t*,char*,...) ; 

__attribute__((used)) static int FUNC4(char** s, size_t* slen, uint8_t* rr,
	size_t rrlen, size_t dname_off)
{
	size_t rdlen;
	uint8_t* rdata;
	int flags, w = 0;
	if(rrlen < dname_off + 10) return 0;
	rdlen = FUNC1(rr+dname_off+8);
	if(rrlen < dname_off + 10 + rdlen) return 0;
	rdata = rr + dname_off + 10;
	flags = (int)FUNC1(rdata);
	w += FUNC3(s, slen, " ;{");

	/* id */
	w += FUNC3(s, slen, "id = %u",
		FUNC0(rdata, rdlen));

	/* flags */
	if((flags&LDNS_KEY_ZONE_KEY)) {
		if((flags&LDNS_KEY_SEP_KEY))
			w += FUNC3(s, slen, " (ksk)");
		else 	w += FUNC3(s, slen, " (zsk)");
	}

	/* keysize */
	if(rdlen > 4) {
		w += FUNC3(s, slen, ", ");
		w += FUNC3(s, slen, "size = %db",
			(int)FUNC2(
			(unsigned char*)rdata+4, rdlen-4, (int)(rdata[3])));
	}

	w += FUNC3(s, slen, "}");
	return w;
}