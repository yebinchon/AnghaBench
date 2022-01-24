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
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC3 (char**,size_t*,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,size_t*,char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 

int FUNC6(uint8_t** d, size_t* dlen, char** s,
	size_t* slen, uint8_t* pkt, size_t pktlen)
{
	size_t rdlen, ordlen;
	int w = 0;
	w += FUNC4(d, dlen, s, slen, pkt, pktlen);
	w += FUNC3(s, slen, "\t");
	w += FUNC2(d, dlen, s, slen);
	w += FUNC3(s, slen, "\t");
	if(*dlen < 2) {
		if(*dlen == 0)
			return w + FUNC3(s, slen, ";Error missing rdatalen\n");
		w += FUNC0(";Error missing rdatalen 0x",
			d, dlen, s, slen);
		return w + FUNC3(s, slen, "\n");
	}
	rdlen = FUNC1(*d);
	ordlen = rdlen;
	(*d) += 2;
	(*dlen) -= 2;
	if(*dlen < rdlen) {
		w += FUNC3(s, slen, "\\# %u ", (unsigned)rdlen);
		if(*dlen == 0)
			return w + FUNC3(s, slen, ";Error missing rdata\n");
		w += FUNC0(";Error partial rdata 0x", d, dlen, s, slen);
		return w + FUNC3(s, slen, "\n");
	}
	w += FUNC5(d, &rdlen, s, slen);
	(*dlen) -= (ordlen-rdlen);
	w += FUNC3(s, slen, "\n");
	return w;
}