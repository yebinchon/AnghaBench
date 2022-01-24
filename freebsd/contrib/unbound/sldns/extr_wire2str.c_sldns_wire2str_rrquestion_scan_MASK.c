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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char**,size_t*,char*) ; 
 scalar_t__ FUNC3 (char**,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,size_t*,char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC5 (char**,size_t*,int /*<<< orphan*/ ) ; 

int FUNC6(uint8_t** d, size_t* dlen, char** s,
	size_t* slen, uint8_t* pkt, size_t pktlen)
{
	int w = 0;
	uint16_t t, c;
	w += FUNC4(d, dlen, s, slen, pkt, pktlen);
	w += FUNC2(s, slen, "\t");
	if(*dlen < 4) {
		if(*dlen == 0)
			return w + FUNC2(s, slen, "Error malformed\n");
		w += FUNC0("Error malformed 0x", d, dlen, s, slen);
		return w + FUNC2(s, slen, "\n");
	}
	t = FUNC1(*d);
	c = FUNC1((*d)+2);
	(*d)+=4;
	(*dlen)-=4;
	w += FUNC3(s, slen, c);
	w += FUNC2(s, slen, "\t");
	w += FUNC5(s, slen, t);
	w += FUNC2(s, slen, "\n");
	return w;
}